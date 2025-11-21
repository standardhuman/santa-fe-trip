# Trip Preparation Checklist - Design Document

**Date:** November 21, 2025
**Feature:** To-Do/Next Steps Section for Santa Fe Trip Planning Page
**Status:** Approved for Implementation

---

## Overview

Add a prominent trip preparation checklist to the Santa Fe trip planning page to help users track all tasks needed before departure. The checklist provides visibility into bookings, reservations, logistics, and pre-departure tasks organized by urgency/timeline.

## Design Decisions

### Format
**Static checklist** - Visual checkboxes showing task status (☐ incomplete, ✅ complete). Users manually update the HTML to mark tasks complete. This approach was chosen over:
- Interactive checklist (requires localStorage, resets on reload)
- Simple list without checkboxes (less clear about completion status)

### Placement
**Top of page** - Positioned immediately after "Trip Overview" section and before "Flights" section. This prominent placement ensures action items are visible on every page visit. Alternative placements considered:
- Bottom of page (less visible, might be forgotten)
- Collapsible section (hides important tasks)

### Organization
**Timeline/priority-based** - Tasks grouped into three urgency categories:
- 🔴 **Do Now** - Time-sensitive bookings
- 🟡 **Do Soon** - Secondary reservations (2-4 weeks before)
- 🟢 **Before Departure** - Final week preparations

This was chosen over:
- Category-based organization (Bookings, Activities, Logistics, Packing) - less clear about urgency
- Single flat list - harder to prioritize

---

## Visual Design

### Container Styling
- **Background:** Warm amber/orange tone (#fff3cd or similar)
- **Border:** 3px solid orange/amber (#ffc107)
- **Header:** "📋 Trip Preparation Checklist" with prominent styling
- **Color scheme:** Warm colors (orange/amber) to contrast with purple/blue theme of other sections
- **Spacing:** Extra padding to make section stand out

### Priority Group Styling
- **Bold headers** with emoji indicators (🔴 🟡 🟢)
- **"Do Now" section:** Subtle urgent background tint (light red/pink)
- **Clear spacing** between groups for visual separation

### Task Item Styling
- **Incomplete tasks:** ☐ checkbox with normal text
- **Completed tasks:** ✅ checkbox with strikethrough text and gray color
- **Line height:** 1.8 for easy readability
- **Format:** Easy to scan and update

### Progress Indicator (Optional)
- Counter at top: "X of Y tasks complete"
- Provides motivation and overall progress tracking

---

## Task Content

### 🔴 Do Now (Time-Sensitive)
- ☐ Book hotel for Dec 27 (La Quinta/Hampton Inn/Best Western at ABQ airport)
- ☐ Book hotel for Dec 30 (La Quinta/Holiday Inn Express/Comfort Suites at ABQ airport)
- ☐ Reserve tickets for Meow Wolf (popular, can sell out)
- ☐ Book Ten Thousand Waves spa appointment (if interested - books up fast)

### 🟡 Do Soon (2-4 Weeks Before)
- ☐ Purchase Rail Runner train tickets (ABQ ↔ Santa Fe)
- ☐ Reserve Georgia O'Keeffe Museum tickets
- ☐ Coordinate arrival/pickup plans with Allison's parents
- ☐ Schedule breakfast or dinner with Landon in Albuquerque
- ☐ Check Santa Fe Botanical Garden GLOW availability
- ☐ Research restaurant reservations for Dec 27 & 30 dinners

### 🟢 Before Departure (Final Week)
- ☐ Pack for winter weather (layers, warm coat, boots)
- ☐ Download United app and check-in 24 hours before flights
- ☐ Confirm hotel reservations
- ☐ Print/save confirmations offline (flight, hotels, activities)
- ☐ Check weather forecast for Santa Fe
- ☐ Arrange BART tickets or SFO transportation

---

## Implementation Notes

### Positioning
- Insert after closing `</div>` of `.trip-overview` section
- Before the `<details class="section-collapsible" open>` for Flights section
- Approximately after line 633 in current index.html

### Markup Structure
```html
<div class="prep-checklist">
  <h2 class="prep-checklist-title">📋 Trip Preparation Checklist</h2>
  <!-- Optional progress counter -->
  <div class="prep-progress">X of Y tasks complete</div>

  <div class="prep-section urgent">
    <h3>🔴 Do Now (Time-Sensitive)</h3>
    <ul class="prep-tasks">
      <li class="prep-task">☐ Task description</li>
      <li class="prep-task completed">✅ Completed task</li>
    </ul>
  </div>

  <!-- Repeat for 🟡 Do Soon and 🟢 Before Departure -->
</div>
```

### CSS Classes
- `.prep-checklist` - Main container
- `.prep-checklist-title` - Section header
- `.prep-progress` - Optional progress counter
- `.prep-section` - Priority group container
- `.prep-section.urgent` - "Do Now" section with urgent styling
- `.prep-tasks` - Task list
- `.prep-task` - Individual task item
- `.prep-task.completed` - Completed task with strikethrough

### Updating Tasks
To mark a task complete:
1. Change `☐` to `✅`
2. Add `completed` class to the `<li>` element
3. Update progress counter if included

---

## User Experience

### Benefits
- **Clear visibility** of all pre-trip tasks in one place
- **Priority-based organization** helps users focus on time-sensitive items
- **Visual progress tracking** with checkboxes and optional counter
- **Low maintenance** - static checklist doesn't require complex state management
- **Persistent** - tasks stay visible on every page visit

### Usage Pattern
1. User views page and sees preparation checklist at top
2. User prioritizes "Do Now" tasks (bookings)
3. As bookings are made, user updates HTML to mark tasks complete
4. User moves to "Do Soon" tasks as trip approaches
5. Final week: User completes "Before Departure" tasks
6. All tasks checked = ready for trip!

---

## Future Enhancements (Not in Initial Implementation)

- Interactive checkboxes with localStorage persistence
- Date/deadline indicators for each task
- Links to booking sites from relevant tasks
- Automatic progress calculation
- Print-friendly packing list view

---

## Success Criteria

✅ Checklist appears at top of page after trip overview
✅ Three priority groups clearly visible and distinct
✅ Tasks cover all preparation areas (bookings, activities, logistics, packing)
✅ Visual styling stands out from other sections
✅ Easy to update task completion status
✅ Mobile-responsive design
