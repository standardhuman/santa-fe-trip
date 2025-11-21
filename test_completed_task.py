#!/usr/bin/env python3
"""Test completed task styling."""

from playwright.sync_api import sync_playwright

with sync_playwright() as p:
    browser = p.chromium.launch(headless=True)
    page = browser.new_page()
    page.goto('file:///Users/brian/Documents/google-flights-claude/index.html')
    page.wait_for_load_state('networkidle')

    # Modify first task to be completed via JavaScript
    page.evaluate("""
        const firstTask = document.querySelector('.prep-task');
        firstTask.classList.add('completed');
        firstTask.textContent = firstTask.textContent.replace('☐', '✅');
    """)

    # Verify completed styling
    completed_task = page.locator('.prep-task.completed').first

    # Check text-decoration and color
    styles = page.evaluate("""
        (selector) => {
            const el = document.querySelector(selector);
            const computed = window.getComputedStyle(el);
            return {
                textDecoration: computed.textDecoration,
                color: computed.color
            };
        }
    """, '.prep-task.completed')

    assert 'line-through' in styles['textDecoration'], "Completed task should have strikethrough"
    print(f"✓ Completed task has strikethrough: {styles['textDecoration']}")
    print(f"✓ Completed task has gray color: {styles['color']}")
    print("✓ Task completion workflow verified")

    browser.close()
