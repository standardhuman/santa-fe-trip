# Trip Preparation Checklist Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add a prominent trip preparation checklist to the Santa Fe trip planning page, organized by priority/timeline to help track pre-trip tasks.

**Architecture:** Insert a new HTML section at the top of the page (after trip overview, before flights section) with custom CSS styling. Static checklist using checkbox emojis (☐/✅) that users manually update. Three priority groups: Do Now, Do Soon, Before Departure.

**Tech Stack:** HTML5, CSS3 (vanilla, no frameworks)

---

## Task 1: Add CSS Styles for Checklist

**Files:**
- Modify: `/Users/brian/Documents/google-flights-claude/index.html:612` (end of `</style>` tag)

**Step 1: Add CSS rules for checklist components**

Insert the following CSS before the closing `</style>` tag at line 612:

```css
        /* Trip Preparation Checklist Styles */
        .prep-checklist {
            background: linear-gradient(135deg, #fff3e0 0%, #ffe0b2 100%);
            border: 3px solid #ff9800;
            border-radius: 20px;
            padding: 30px 40px;
            margin-bottom: 40px;
            box-shadow: 0 8px 24px rgba(255, 152, 0, 0.2);
        }

        .prep-checklist-title {
            color: #e65100;
            font-size: 2em;
            margin-bottom: 15px;
            text-align: center;
        }

        .prep-progress {
            text-align: center;
            font-size: 1.1em;
            color: #f57c00;
            font-weight: 600;
            margin-bottom: 30px;
            padding: 10px;
            background: rgba(255, 255, 255, 0.5);
            border-radius: 8px;
        }

        .prep-section {
            background: white;
            border-radius: 12px;
            padding: 20px 25px;
            margin-bottom: 20px;
            border-left: 5px solid #ff9800;
        }

        .prep-section.urgent {
            background: #ffebee;
            border-left-color: #f44336;
        }

        .prep-section h3 {
            color: #d84315;
            font-size: 1.4em;
            margin-bottom: 15px;
        }

        .prep-tasks {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .prep-task {
            color: #424242;
            line-height: 2;
            padding: 8px 0;
            font-size: 1.05em;
            transition: all 0.2s ease;
        }

        .prep-task:hover {
            background: rgba(255, 152, 0, 0.05);
            padding-left: 10px;
            border-radius: 4px;
        }

        .prep-task.completed {
            color: #9e9e9e;
            text-decoration: line-through;
        }

        @media (max-width: 768px) {
            .prep-checklist {
                padding: 20px;
            }

            .prep-checklist-title {
                font-size: 1.6em;
            }

            .prep-section h3 {
                font-size: 1.2em;
            }
        }
```

**Step 2: Verify CSS was added correctly**

Check that:
- CSS is inserted before closing `</style>` tag (should be around line 612)
- No syntax errors (matching braces, semicolons)
- Responsive breakpoint included

**Step 3: Commit CSS changes**

```bash
git add index.html
git commit -m "style: add CSS for trip preparation checklist"
```

---

## Task 2: Add HTML Markup for Checklist Section

**Files:**
- Modify: `/Users/brian/Documents/google-flights-claude/index.html:633` (after closing `</div>` of `.trip-overview`)

**Step 1: Insert checklist HTML after trip overview section**

Find the closing `</div>` of the `.trip-overview` section (should be around line 633, right before the Flights section starts). Insert this HTML immediately after:

```html

        <!-- Trip Preparation Checklist -->
        <div class="prep-checklist">
            <h2 class="prep-checklist-title">📋 Trip Preparation Checklist</h2>
            <div class="prep-progress">0 of 16 tasks complete</div>

            <!-- Do Now Section -->
            <div class="prep-section urgent">
                <h3>🔴 Do Now (Time-Sensitive)</h3>
                <ul class="prep-tasks">
                    <li class="prep-task">☐ Book hotel for Dec 27 (La Quinta/Hampton Inn/Best Western at ABQ airport)</li>
                    <li class="prep-task">☐ Book hotel for Dec 30 (La Quinta/Holiday Inn Express/Comfort Suites at ABQ airport)</li>
                    <li class="prep-task">☐ Reserve tickets for Meow Wolf (popular, can sell out)</li>
                    <li class="prep-task">☐ Book Ten Thousand Waves spa appointment (if interested - books up fast)</li>
                </ul>
            </div>

            <!-- Do Soon Section -->
            <div class="prep-section">
                <h3>🟡 Do Soon (2-4 Weeks Before)</h3>
                <ul class="prep-tasks">
                    <li class="prep-task">☐ Purchase Rail Runner train tickets (ABQ ↔ Santa Fe)</li>
                    <li class="prep-task">☐ Reserve Georgia O'Keeffe Museum tickets</li>
                    <li class="prep-task">☐ Coordinate arrival/pickup plans with Allison's parents</li>
                    <li class="prep-task">☐ Schedule breakfast or dinner with Landon in Albuquerque</li>
                    <li class="prep-task">☐ Check Santa Fe Botanical Garden GLOW availability</li>
                    <li class="prep-task">☐ Research restaurant reservations for Dec 27 & 30 dinners</li>
                </ul>
            </div>

            <!-- Before Departure Section -->
            <div class="prep-section">
                <h3>🟢 Before Departure (Final Week)</h3>
                <ul class="prep-tasks">
                    <li class="prep-task">☐ Pack for winter weather (layers, warm coat, boots)</li>
                    <li class="prep-task">☐ Download United app and check-in 24 hours before flights</li>
                    <li class="prep-task">☐ Confirm hotel reservations</li>
                    <li class="prep-task">☐ Print/save confirmations offline (flight, hotels, activities)</li>
                    <li class="prep-task">☐ Check weather forecast for Santa Fe</li>
                    <li class="prep-task">☐ Arrange BART tickets or SFO transportation</li>
                </ul>
            </div>
        </div>
```

**Step 2: Verify HTML structure**

Check that:
- Checklist appears after trip overview closing `</div>`
- Checklist appears before flights `<details class="section-collapsible" open>`
- All tags properly closed
- 16 total tasks across 3 sections
- Proper indentation maintained

**Step 3: Commit HTML changes**

```bash
git add index.html
git commit -m "feat: add trip preparation checklist section"
```

---

## Task 3: Visual Testing and Verification

**Files:**
- View: `/Users/brian/Documents/google-flights-claude/index.html`

**Step 1: Open page in browser**

Run:
```bash
open /Users/brian/Documents/google-flights-claude/index.html
```

Or if you have a local server running, visit the local URL.

**Step 2: Verify visual appearance**

Check:
- ✓ Checklist appears at top of page, after trip overview
- ✓ Orange/amber color scheme stands out from purple sections
- ✓ Progress counter shows "0 of 16 tasks complete"
- ✓ Three sections visible: 🔴 Do Now, 🟡 Do Soon, 🟢 Before Departure
- ✓ "Do Now" section has pink/red background tint
- ✓ Checkbox emojis (☐) visible on all tasks
- ✓ Text is readable with good line height
- ✓ Hover effect works on task items

**Step 3: Test responsive design**

- Resize browser to mobile width (< 768px)
- Check that padding adjusts appropriately
- Verify text remains readable
- Confirm all tasks still visible

**Step 4: Test task completion workflow**

Using browser DevTools or by editing HTML directly:
1. Change one task from `☐` to `✅`
2. Add `completed` class to that `<li>` element
3. Verify task shows strikethrough and gray color
4. Update progress counter from "0 of 16" to "1 of 16"

Example:
```html
<li class="prep-task completed">✅ Book hotel for Dec 27 (La Quinta/Hampton Inn/Best Western at ABQ airport)</li>
```

**Step 5: Document testing completion**

Create a simple test log:
```bash
echo "✅ Checklist visual appearance verified" >> test-results.txt
echo "✅ Responsive design tested" >> test-results.txt
echo "✅ Task completion workflow verified" >> test-results.txt
```

---

## Task 4: Deploy and Final Verification

**Files:**
- Deploy: Production (Vercel)

**Step 1: Push to git repository**

```bash
git push origin main
```

**Step 2: Wait for Vercel deployment**

- Vercel auto-deploys from main branch
- Check deployment status at https://vercel.com/dashboard
- Or monitor via: `vercel --prod`

**Step 3: Test production deployment**

Visit: https://sfo-santa-fe-holiday-trip-2025.vercel.app

Verify:
- ✓ Checklist appears on production site
- ✓ Styling renders correctly
- ✓ Mobile responsive
- ✓ All 16 tasks visible
- ✓ Progress counter shows "0 of 16 tasks complete"

**Step 4: Create deployment verification commit**

```bash
git commit --allow-empty -m "chore: verify trip checklist deployed successfully"
git push origin main
```

---

## Task 5: Update Design Document with Implementation Status

**Files:**
- Modify: `/Users/brian/Documents/google-flights-claude/docs/plans/2025-11-21-trip-preparation-checklist-design.md:4`

**Step 1: Update status in design document**

Change line 4 from:
```markdown
**Status:** Approved for Implementation
```

To:
```markdown
**Status:** ✅ Implemented - Deployed to Production
**Implementation Date:** November 21, 2025
**Production URL:** https://sfo-santa-fe-holiday-trip-2025.vercel.app
```

**Step 2: Add implementation notes section**

At the end of the design document, add:

```markdown
---

## Implementation Complete

**Completed:** November 21, 2025
**Files Modified:**
- `/Users/brian/Documents/google-flights-claude/index.html` (CSS + HTML)

**Production Deployment:**
- URL: https://sfo-santa-fe-holiday-trip-2025.vercel.app
- Verified on desktop and mobile browsers
- All 16 tasks displaying correctly
- Visual design matches specifications

**How to Update Tasks:**
1. Edit `index.html`
2. Change `☐` to `✅` for completed tasks
3. Add `class="completed"` to the `<li>` element
4. Update progress counter: "X of 16 tasks complete"
5. Commit and push to trigger deployment
```

**Step 3: Commit documentation update**

```bash
git add docs/plans/2025-11-21-trip-preparation-checklist-design.md
git commit -m "docs: mark trip checklist as implemented"
git push origin main
```

---

## Success Criteria

All tasks complete when:

- ✅ CSS styles added to index.html
- ✅ HTML checklist section inserted after trip overview
- ✅ Checklist appears prominently at top of page
- ✅ Orange/amber color scheme stands out
- ✅ Three priority groups (Do Now, Do Soon, Before Departure) visible
- ✅ 16 tasks total across all sections
- ✅ Progress counter shows "0 of 16 tasks complete"
- ✅ Responsive design works on mobile
- ✅ Task completion workflow (☐ → ✅ + strikethrough) works
- ✅ Deployed to production Vercel site
- ✅ Design document updated with implementation status

---

## Notes for Future Enhancements

**Not included in this implementation:**
- Interactive checkboxes with localStorage (future enhancement)
- Automatic progress calculation (currently manual)
- Direct links to booking sites from tasks
- Date/deadline indicators

**To mark tasks complete:**
1. Edit `index.html` directly
2. Change `☐` to `✅`
3. Add `class="completed"` to the `<li>` element
4. Update progress counter manually
5. Commit and push to deploy

**File Location:**
- Main file: `/Users/brian/Documents/google-flights-claude/index.html`
- Design doc: `/Users/brian/Documents/google-flights-claude/docs/plans/2025-11-21-trip-preparation-checklist-design.md`
