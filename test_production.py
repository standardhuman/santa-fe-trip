#!/usr/bin/env python3
"""Test production deployment of trip preparation checklist."""

from playwright.sync_api import sync_playwright
import sys

def test_production():
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        page = browser.new_page()

        # Load production site
        print("Loading production site...")
        page.goto('https://sfo-santa-fe-holiday-trip-2025.vercel.app')
        page.wait_for_load_state('networkidle')
        print("✓ Production site loaded")

        # Verify checklist section exists
        checklist = page.locator('.prep-checklist')
        assert checklist.is_visible(), "Checklist section not visible on production"
        print("✓ Checklist section visible on production")

        # Verify title
        title = page.locator('.prep-checklist-title')
        assert "Trip Preparation Checklist" in title.text_content()
        print("✓ Checklist title correct")

        # Verify progress counter
        progress = page.locator('.prep-progress')
        assert "0 of 16 tasks complete" in progress.text_content()
        print("✓ Progress counter: '0 of 16 tasks complete'")

        # Verify sections
        sections = page.locator('.prep-section').all()
        assert len(sections) == 3, f"Expected 3 sections, found {len(sections)}"
        print("✓ 3 priority sections present")

        # Count tasks
        tasks = page.locator('.prep-task').all()
        assert len(tasks) == 16, f"Expected 16 tasks, found {len(tasks)}"
        print("✓ All 16 tasks present")

        # Test mobile responsive
        page.set_viewport_size({"width": 375, "height": 667})
        page.wait_for_timeout(500)
        assert checklist.is_visible()
        print("✓ Mobile responsive verified")

        # Take production screenshot
        page.screenshot(path='/tmp/production_checklist.png', full_page=True)
        print("✓ Production screenshot: /tmp/production_checklist.png")

        browser.close()
        print("\n✅ Production deployment verified successfully!")
        return True

if __name__ == '__main__':
    try:
        success = test_production()
        sys.exit(0 if success else 1)
    except Exception as e:
        print(f"\n❌ Production test failed: {e}")
        sys.exit(1)
