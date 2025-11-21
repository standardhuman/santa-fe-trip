#!/usr/bin/env python3
"""Test script to verify the trip preparation checklist appearance."""

from playwright.sync_api import sync_playwright
import sys

def test_checklist():
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        page = browser.new_page()

        # Load the static HTML file
        page.goto('file:///Users/brian/Documents/google-flights-claude/index.html')
        page.wait_for_load_state('networkidle')

        print("✓ Page loaded successfully")

        # Verify checklist section exists
        checklist = page.locator('.prep-checklist')
        assert checklist.is_visible(), "Checklist section not visible"
        print("✓ Checklist section is visible")

        # Verify title
        title = page.locator('.prep-checklist-title')
        assert title.is_visible(), "Checklist title not visible"
        assert "Trip Preparation Checklist" in title.text_content(), "Title text incorrect"
        print("✓ Checklist title correct: '📋 Trip Preparation Checklist'")

        # Verify progress counter
        progress = page.locator('.prep-progress')
        assert progress.is_visible(), "Progress counter not visible"
        assert "0 of 16 tasks complete" in progress.text_content(), "Progress counter incorrect"
        print("✓ Progress counter shows: '0 of 16 tasks complete'")

        # Verify three priority sections
        sections = page.locator('.prep-section').all()
        assert len(sections) == 3, f"Expected 3 sections, found {len(sections)}"
        print(f"✓ Found 3 priority sections")

        # Verify "Do Now" section has urgent class and correct title
        urgent_section = page.locator('.prep-section.urgent')
        assert urgent_section.is_visible(), "Urgent section not visible"
        urgent_title = urgent_section.locator('h3')
        assert "Do Now" in urgent_title.text_content(), "Urgent section title incorrect"
        print("✓ 'Do Now' section has urgent styling")

        # Count total tasks
        tasks = page.locator('.prep-task').all()
        assert len(tasks) == 16, f"Expected 16 tasks, found {len(tasks)}"
        print(f"✓ Total tasks: 16")

        # Verify all tasks have checkboxes
        for i, task in enumerate(tasks, 1):
            text = task.text_content()
            assert text.startswith('☐'), f"Task {i} missing checkbox: {text[:50]}"
        print("✓ All tasks have checkbox emoji (☐)")

        # Verify checklist appears before flights section
        checklist_box = checklist.bounding_box()
        flights_section = page.locator('details.section-collapsible').first
        flights_box = flights_section.bounding_box()

        assert checklist_box['y'] < flights_box['y'], "Checklist should appear before flights"
        print("✓ Checklist positioned before flights section")

        # Test responsive design by resizing
        page.set_viewport_size({"width": 375, "height": 667})  # iPhone size
        page.wait_for_timeout(500)  # Wait for reflow

        assert checklist.is_visible(), "Checklist not visible on mobile"
        print("✓ Checklist visible on mobile viewport (375x667)")

        # Take screenshot
        page.screenshot(path='/tmp/checklist_test.png', full_page=True)
        print("✓ Screenshot saved to /tmp/checklist_test.png")

        browser.close()
        print("\n✅ All visual tests passed!")
        return True

if __name__ == '__main__':
    try:
        success = test_checklist()
        sys.exit(0 if success else 1)
    except Exception as e:
        print(f"\n❌ Test failed: {e}")
        sys.exit(1)
