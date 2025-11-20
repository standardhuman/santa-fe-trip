const { google } = require('googleapis');
const fs = require('fs');

async function searchFlightEmails() {
  try {
    // Load credentials
    const credentials = JSON.parse(fs.readFileSync('/Users/brian/Documents/personal-assistant/.gmail-credentials.json', 'utf8'));
    const keys = JSON.parse(fs.readFileSync('/Users/brian/Documents/personal-assistant/gcp-oauth.keys.json', 'utf8'));

    // Set up OAuth2 client
    const oauth2Client = new google.auth.OAuth2(
      keys.installed.client_id,
      keys.installed.client_secret,
      keys.installed.redirect_uris[0]
    );

    oauth2Client.setCredentials(credentials);

    // Create Gmail API client
    const gmail = google.gmail({ version: 'v1', auth: oauth2Client });

    // Search for emails about Santa Fe flights with more specific terms
    const response = await gmail.users.messages.list({
      userId: 'me',
      q: '(United Airlines OR "flight confirmation" OR "booking confirmation" OR itinerary OR "trip details") AND (Albuquerque OR ABQ) after:2024/10/01',
      maxResults: 30
    });

    if (!response.data.messages || response.data.messages.length === 0) {
      console.log('No flight messages found matching the search.');
      return;
    }

    console.log(`Found ${response.data.messages.length} messages:\n`);
    console.log('='.repeat(80) + '\n');

    // Get details for each message
    for (const message of response.data.messages) {
      const msg = await gmail.users.messages.get({
        userId: 'me',
        id: message.id,
        format: 'full'
      });

      const headers = msg.data.payload.headers;
      const subject = headers.find(h => h.name === 'Subject')?.value || '(no subject)';
      const from = headers.find(h => h.name === 'From')?.value || '(unknown)';
      const date = headers.find(h => h.name === 'Date')?.value || '(unknown)';

      console.log(`Date: ${date}`);
      console.log(`From: ${from}`);
      console.log(`Subject: ${subject}`);

      // Get body
      let body = '';
      if (msg.data.payload.body?.data) {
        body = Buffer.from(msg.data.payload.body.data, 'base64').toString('utf-8');
      } else if (msg.data.payload.parts) {
        // Try to get text/plain first, then text/html
        for (const part of msg.data.payload.parts) {
          if (part.mimeType === 'text/plain' && part.body?.data) {
            body = Buffer.from(part.body.data, 'base64').toString('utf-8');
            break;
          }
        }
        // If no text/plain, try text/html
        if (!body) {
          for (const part of msg.data.payload.parts) {
            if (part.mimeType === 'text/html' && part.body?.data) {
              body = Buffer.from(part.body.data, 'base64').toString('utf-8');
              break;
            }
          }
        }
        // Check nested parts
        if (!body && msg.data.payload.parts) {
          for (const part of msg.data.payload.parts) {
            if (part.parts) {
              for (const subpart of part.parts) {
                if (subpart.mimeType === 'text/plain' && subpart.body?.data) {
                  body = Buffer.from(subpart.body.data, 'base64').toString('utf-8');
                  break;
                }
              }
            }
            if (body) break;
          }
        }
      }

      // Print more of the body for flight details
      console.log(`\nFull message body (first 10000 chars):\n${body.substring(0, 10000)}${body.length > 10000 ? '...\n' : '\n'}`);
      console.log('='.repeat(80) + '\n');
    }

  } catch (error) {
    console.error('Error accessing Gmail:', error.message);
    if (error.response) {
      console.error('Response data:', error.response.data);
    }
  }
}

searchFlightEmails();
