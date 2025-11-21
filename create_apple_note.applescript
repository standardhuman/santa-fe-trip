#!/usr/bin/osascript

tell application "Notes"
	-- Create new note
	set newNote to make new note at folder "Notes"

	tell newNote
		set name to "🎄 Santa Fe Holiday Trip - Dec 27-31, 2025"

		-- Using Apple Notes native HTML format with proper checklist and heading styles
		set body to "<div style='font-family: -apple-system, Helvetica;'>
<div style='font-size: 28pt; font-weight: bold; margin-bottom: 8px;'>🎄 Santa Fe Holiday Trip</div>
<div style='font-size: 13pt; color: #666; margin-bottom: 20px;'><b>December 27-31, 2025</b></div>
<div style='height: 1px; background: #ddd; margin: 20px 0;'></div>

<div style='font-size: 20pt; font-weight: bold; margin-top: 20px; margin-bottom: 10px;'>📋 Trip Preparation Checklist</div>

<div style='font-size: 17pt; font-weight: bold; margin-top: 16px; margin-bottom: 8px;'>🔴 Do Now (Time-Sensitive)</div>
<div data-type='checklist'>
<div><input type='checkbox'/> Book hotel for Dec 27 (La Quinta/Hampton Inn/Best Western at ABQ airport)</div>
<div><input type='checkbox'/> Book hotel for Dec 30 (La Quinta/Holiday Inn Express/Comfort Suites at ABQ airport)</div>
<div><input type='checkbox'/> Reserve tickets for Meow Wolf (popular, can sell out)</div>
<div><input type='checkbox'/> Book Ten Thousand Waves spa appointment (if interested - books up fast)</div>
</div>

<div style='font-size: 17pt; font-weight: bold; margin-top: 16px; margin-bottom: 8px;'>🟡 Do Soon (2-4 Weeks Before)</div>
<div data-type='checklist'>
<div><input type='checkbox'/> Purchase Rail Runner train tickets (ABQ ↔ Santa Fe)</div>
<div><input type='checkbox'/> Reserve Georgia O'Keeffe Museum tickets</div>
<div><input type='checkbox'/> Coordinate arrival/pickup plans with Allison's parents</div>
<div><input type='checkbox'/> Schedule breakfast or dinner with Landon in Albuquerque</div>
<div><input type='checkbox'/> Check Santa Fe Botanical Garden GLOW availability</div>
<div><input type='checkbox'/> Research restaurant reservations for Dec 27 & 30 dinners</div>
</div>

<div style='font-size: 17pt; font-weight: bold; margin-top: 16px; margin-bottom: 8px;'>🟢 Before Departure (Final Week)</div>
<div data-type='checklist'>
<div><input type='checkbox'/> Pack for winter weather (layers, warm coat, boots)</div>
<div><input type='checkbox'/> Download United app and check-in 24 hours before flights</div>
<div><input type='checkbox'/> Confirm hotel reservations</div>
<div><input type='checkbox'/> Print/save confirmations offline (flight, hotels, activities)</div>
<div><input type='checkbox'/> Check weather forecast for Santa Fe</div>
<div><input type='checkbox'/> Arrange BART tickets or SFO transportation</div>
</div>

<div style='height: 1px; background: #ddd; margin: 20px 0;'></div>

<div style='font-size: 20pt; font-weight: bold; margin-top: 20px; margin-bottom: 10px;'>✈️ Flights - BOOKED!</div>
<div style='font-size: 13pt; margin-bottom: 10px;'><b>United Airlines Confirmation: JSP6BX</b></div>

<div style='font-size: 17pt; font-weight: bold; margin-top: 16px; margin-bottom: 8px;'>Outbound Flight - UA5789</div>
<div style='margin-left: 20px;'>
<div><b>Date:</b> Saturday, December 27, 2025</div>
<div><b>Departure:</b> 7:10 PM from San Francisco (SFO)</div>
<div><b>Arrival:</b> 10:41 PM in Albuquerque (ABQ)</div>
<div><b>Duration:</b> 2h 31m (nonstop)</div>
<div><b>Class:</b> United Economy (N)</div>
<div><b>Operated by:</b> SkyWest DBA United Express</div>
</div>

<div style='font-size: 17pt; font-weight: bold; margin-top: 16px; margin-bottom: 8px;'>Return Flight - UA4644</div>
<div style='margin-left: 20px;'>
<div><b>Date:</b> Wednesday, December 31, 2025 (New Year's Eve!)</div>
<div><b>Departure:</b> 6:31 AM from Albuquerque (ABQ)</div>
<div><b>Arrival:</b> 8:40 AM in San Francisco (SFO)</div>
<div><b>Duration:</b> 3h 9m (nonstop)</div>
<div><b>Class:</b> United Economy (N)</div>
<div><b>Operated by:</b> SkyWest DBA United Express</div>
</div>

<div style='margin-top: 10px; margin-left: 20px;'>
<div><b>Travelers:</b></div>
<div>• Brian Cline (eTicket: 0162350132743)</div>
<div>• Allison Pierce (eTicket: 0162350132744)</div>
</div>

<div style='margin-top: 10px;'><a href='https://www.united.com/en/us/mytrips'>Manage Booking on United.com →</a></div>

<div style='height: 1px; background: #ddd; margin: 20px 0;'></div>

<div style='font-size: 20pt; font-weight: bold; margin-top: 20px; margin-bottom: 10px;'>🏨 Hotel Options</div>

<div style='font-size: 17pt; font-weight: bold; margin-top: 16px; margin-bottom: 8px;'>Night 1: Friday, December 27 (Arriving 10:41 PM)</div>

<div style='margin-left: 20px; margin-bottom: 15px;'>
<div><b>Budget Option - La Quinta Inn Airport ($86/night)</b></div>
<div>⭐️ 3.4 (1,407 reviews)</div>
<div>Free breakfast, airport shuttle, pool & hot tub, parking</div>
</div>

<div style='margin-left: 20px; margin-bottom: 15px;'>
<div><b>Recommended - Hampton Inn & Suites ($112/night)</b></div>
<div>⭐️ 4.4 (1,073 reviews)</div>
<div>Free breakfast, airport shuttle, indoor pool, modern fitness center</div>
</div>

<div style='font-size: 17pt; font-weight: bold; margin-top: 16px; margin-bottom: 8px;'>Night 2: Monday, December 30 (For Early Dec 31 Flight)</div>

<div style='margin-left: 20px; margin-bottom: 15px;'>
<div><b>Budget Option - La Quinta Inn Airport ($75/night)</b></div>
<div>⭐️ 3.4 (1,407 reviews)</div>
<div>Free breakfast, airport shuttle, easy early morning access</div>
</div>

<div style='margin-left: 20px; margin-bottom: 15px;'>
<div><b>Recommended - Holiday Inn Express ($86/night)</b></div>
<div>⭐️ 4.3 (799 reviews)</div>
<div>Free breakfast, airport shuttle, indoor pool, excellent service</div>
</div>

<div style='margin-left: 20px; margin-bottom: 15px;'>
<div><b>Premium - Comfort Suites Airport ($121/night)</b></div>
<div>⭐️ 4.9 (2,576 reviews)</div>
<div>Free breakfast, airport shuttle, exceptional cleanliness</div>
</div>

<div style='height: 1px; background: #ddd; margin: 20px 0;'></div>

<div style='font-size: 20pt; font-weight: bold; margin-top: 20px; margin-bottom: 10px;'>🚗 Transportation</div>

<div style='margin-left: 20px;'>
<div style='margin-bottom: 10px;'><b>✅ Chosen Plan</b></div>
<div>• Parents' vehicles available in Santa Fe!</div>
<div>• Rail Runner train (Allison's preferred) - Scenic ride ABQ ↔ Santa Fe</div>
<div>• ~$10 per person, ~1.5-2 hours</div>
<div>• May need Uber to/from train stations</div>
<div style='margin-top: 8px;'><a href='https://www.riometro.org/rail-runner'>Rail Runner Schedule</a></div>
</div>

<div style='height: 1px; background: #ddd; margin: 20px 0;'></div>

<div style='font-size: 20pt; font-weight: bold; margin-top: 20px; margin-bottom: 10px;'>📅 Sample Itinerary</div>

<div style='font-size: 17pt; font-weight: bold; margin-top: 16px; margin-bottom: 8px;'>Friday, December 27</div>
<div style='margin-left: 20px;'>
<div>4:15 PM - Leave from 639 Guerrero St</div>
<div>4:30 PM - BART to SFO (~45 min)</div>
<div>7:10 PM - Depart SFO on United</div>
<div>10:41 PM - Arrive ABQ</div>
<div>11:00 PM - Check into airport hotel</div>
</div>

<div style='font-size: 17pt; font-weight: bold; margin-top: 16px; margin-bottom: 8px;'>Saturday, December 28</div>
<div style='margin-left: 20px;'>
<div><b>Option A:</b> 8:00 AM - Breakfast with Landon in Albuquerque</div>
<div>10:00 AM - Take Rail Runner to Santa Fe OR parents pick up</div>
<div>~12:00 PM - Arrive Santa Fe, settle in</div>
<div>Afternoon/evening: Explore Santa Fe Plaza, galleries (just you two!)</div>
</div>

<div style='font-size: 17pt; font-weight: bold; margin-top: 16px; margin-bottom: 8px;'>🎂 Sunday, December 29 - BIRTHDAY CELEBRATION!</div>
<div style='margin-left: 20px;'>
<div style='margin-bottom: 8px;'><b>Allison's Dad & Brother's Birthday!</b></div>
<div>Morning: Relaxed time at parents' house</div>
<div>Daytime: Could explore (Meow Wolf, Georgia O'Keeffe, Canyon Road)</div>
<div><b>Evening: 🌶️ Special Birthday Dinner at Sazon Mexican Restaurant</b></div>
<div style='margin-left: 20px; font-style: italic;'>Parents treating - incredible moles from Mexico, one of Santa Fe's best!</div>
<div>Birthday celebration with family</div>
</div>

<div style='font-size: 17pt; font-weight: bold; margin-top: 16px; margin-bottom: 8px;'>Monday, December 30</div>
<div style='margin-left: 20px;'>
<div>Morning: Final Santa Fe exploration</div>
<div>Afternoon: Time with parents at their house</div>
<div><b>Option B:</b> Evening - Dinner with Landon in Albuquerque</div>
<div>~6:00 PM - Drive/Rail Runner back to ABQ</div>
<div>7:30 PM - Check into airport hotel</div>
<div>Early to bed for 6:31 AM flight!</div>
</div>

<div style='font-size: 17pt; font-weight: bold; margin-top: 16px; margin-bottom: 8px;'>Tuesday, December 31 - New Year's Eve!</div>
<div style='margin-left: 20px;'>
<div>5:00 AM - Wake up (at airport - no drive!)</div>
<div>6:31 AM - Depart ABQ</div>
<div>8:40 AM - Arrive SFO</div>
<div><b>10:00 AM - Home by mid-morning to celebrate NYE!</b></div>
</div>

<div style='height: 1px; background: #ddd; margin: 20px 0;'></div>

<div style='font-size: 20pt; font-weight: bold; margin-top: 20px; margin-bottom: 10px;'>🎨 Things to Do in Santa Fe</div>

<div style='font-size: 17pt; font-weight: bold; margin-top: 16px; margin-bottom: 8px;'>Outdoor Adventures</div>
<div style='margin-left: 20px;'>
<div>⛷️ Ski Santa Fe - 16 miles from downtown, 86 trails</div>
<div>❄️ Snowshoeing - Forest trails perfect for winter</div>
<div>⛰️ Atalaya Mountain Trail - 6-mile round trip</div>
<div>🥾 Dale Ball Trails - 25-mile network</div>
</div>

<div style='font-size: 17pt; font-weight: bold; margin-top: 16px; margin-bottom: 8px;'>Arts & Culture</div>
<div style='margin-left: 20px;'>
<div>🎭 <a href='https://meowwolf.com/visit/santa-fe'>Meow Wolf</a> - Immersive art experience</div>
<div>🖼️ <a href='https://www.okeeffemuseum.org/'>Georgia O'Keeffe Museum</a></div>
<div>🎨 Canyon Road Galleries - Over 100 galleries</div>
<div>🎄 Santa Fe Plaza - Historic downtown with holiday lighting</div>
</div>

<div style='font-size: 17pt; font-weight: bold; margin-top: 16px; margin-bottom: 8px;'>Relaxation</div>
<div style='margin-left: 20px;'>
<div>🧖 <a href='https://tenthousandwaves.com/'>Ten Thousand Waves</a> - Japanese spa with forest hot tubs</div>
<div>✨ Santa Fe Botanical Garden GLOW - Holiday light show</div>
</div>

<div style='height: 1px; background: #ddd; margin: 20px 0;'></div>

<div style='font-size: 20pt; font-weight: bold; margin-top: 20px; margin-bottom: 10px;'>💰 Trip Cost Estimates (Per Person - Couple)</div>

<div style='font-size: 17pt; font-weight: bold; margin-top: 16px; margin-bottom: 8px;'>Budget Option: $597.50</div>
<div style='margin-left: 20px;'>
<div>Flights: $421</div>
<div>BART to/from SFO: $21</div>
<div>Hotels (split): $80.50</div>
<div>Rail Runner + Uber: $25</div>
<div>Dinners (2): $50</div>
</div>

<div style='font-size: 17pt; font-weight: bold; margin-top: 16px; margin-bottom: 8px;'>Recommended Option: $631</div>
<div style='margin-left: 20px;'>
<div>Flights: $421</div>
<div>BART to/from SFO: $21</div>
<div>Hotels (split): $99</div>
<div>Rail Runner + Uber: $30</div>
<div>Dinners (2): $60</div>
</div>

<div style='font-size: 17pt; font-weight: bold; margin-top: 16px; margin-bottom: 8px;'>Premium Option: $692.50</div>
<div style='margin-left: 20px;'>
<div>Flights: $421</div>
<div>Uber to/from SFO (split): $55</div>
<div>Hotels (split): $116.50</div>
<div>Rail Runner + Uber: $30</div>
<div>Dinners (2): $70</div>
</div>

<div style='margin-top: 10px; font-style: italic; color: #666;'>All hotel costs split between two people. Parents' vehicles available in Santa Fe (free!)</div>

<div style='height: 1px; background: #ddd; margin: 20px 0;'></div>

<div style='font-size: 20pt; font-weight: bold; margin-top: 20px; margin-bottom: 10px;'>📝 Important Notes</div>
<div style='margin-left: 20px;'>
<div><b>Parents' Mobility:</b> Not super mobile - time together mostly at their house</div>
<div><b>Solo Exploration:</b> Museums, Canyon Road, Meow Wolf = just you two</div>
<div><b>Special Dinner:</b> Parents treating to amazing mole restaurant!</div>
<div><b>See Landon:</b> Options for breakfast or dinner in Albuquerque</div>
</div>

<div style='height: 1px; background: #ddd; margin: 20px 0;'></div>

<div style='font-size: 20pt; font-weight: bold; margin-top: 20px; margin-bottom: 10px;'>💡 Consider: Arriving December 26 Instead?</div>
<div style='margin-left: 20px;'>
Flights on Dec 26 are about the same price. Would give an extra full day in Santa Fe for exploring before family celebrations.
</div>

<div style='height: 1px; background: #ddd; margin: 20px 0;'></div>

<div style='font-size: 20pt; font-weight: bold; margin-top: 20px; margin-bottom: 10px;'>🔗 Quick Links</div>
<div style='margin-left: 20px;'>
<div><a href='https://www.united.com/en/us/mytrips'>United Airlines - Manage Booking</a></div>
<div><a href='https://www.riometro.org/rail-runner'>Rail Runner Train Schedule</a></div>
<div><a href='https://meowwolf.com/visit/santa-fe'>Meow Wolf Santa Fe</a></div>
<div><a href='https://www.okeeffemuseum.org/'>Georgia O'Keeffe Museum</a></div>
<div><a href='https://tenthousandwaves.com/'>Ten Thousand Waves Spa</a></div>
<div><a href='https://www.santafe.org/'>Santa Fe Visitor Info</a></div>
<div><a href='https://sfo-santa-fe-holiday-trip-2025.vercel.app'>Full Trip Plan Website</a></div>
</div>

<div style='margin-top: 30px; font-style: italic; color: #999; font-size: 11pt;'>Last Updated: November 21, 2025</div>
</div>"
	end tell

	-- Show the note
	show newNote

end tell

return "Note created successfully with native Apple Notes formatting!"
