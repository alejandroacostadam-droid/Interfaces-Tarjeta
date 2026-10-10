---
name: Tenebris & Gold
colors:
  surface: '#121314'
  surface-dim: '#121314'
  surface-bright: '#38393a'
  surface-container-lowest: '#0d0e0f'
  surface-container-low: '#1b1c1d'
  surface-container: '#1f2021'
  surface-container-high: '#292a2b'
  surface-container-highest: '#343536'
  on-surface: '#e3e2e3'
  on-surface-variant: '#d0c5b5'
  inverse-surface: '#e3e2e3'
  inverse-on-surface: '#303031'
  outline: '#998f81'
  outline-variant: '#4d463a'
  surface-tint: '#e4c283'
  primary: '#e4c283'
  on-primary: '#412d00'
  primary-container: '#c6a66a'
  on-primary-container: '#513b08'
  inverse-primary: '#745a26'
  secondary: '#c6c6c7'
  on-secondary: '#2f3132'
  secondary-container: '#454748'
  on-secondary-container: '#b4b5b6'
  tertiary: '#cfc5b8'
  on-tertiary: '#353027'
  tertiary-container: '#b2a99d'
  on-tertiary-container: '#443e34'
  error: '#ffb4ab'
  on-error: '#690005'
  error-container: '#93000a'
  on-error-container: '#ffdad6'
  primary-fixed: '#ffdea4'
  primary-fixed-dim: '#e4c283'
  on-primary-fixed: '#261900'
  on-primary-fixed-variant: '#5a4310'
  secondary-fixed: '#e2e2e3'
  secondary-fixed-dim: '#c6c6c7'
  on-secondary-fixed: '#1a1c1d'
  on-secondary-fixed-variant: '#454748'
  tertiary-fixed: '#ebe1d3'
  tertiary-fixed-dim: '#cfc5b8'
  on-tertiary-fixed: '#1f1b13'
  on-tertiary-fixed-variant: '#4c463c'
  background: '#121314'
  on-background: '#e3e2e3'
  surface-variant: '#343536'
typography:
  headline-xl:
    fontFamily: EB Garamond
    fontSize: 36px
    fontWeight: '600'
    lineHeight: 38px
    letterSpacing: 0px
  headline-xl-mobile:
    fontFamily: EB Garamond
    fontSize: 28px
    fontWeight: '600'
    lineHeight: 32px
    letterSpacing: 0px
  headline-lg:
    fontFamily: EB Garamond
    fontSize: 28px
    fontWeight: '600'
    lineHeight: 34px
    letterSpacing: 0px
  headline-section-index:
    fontFamily: EB Garamond
    fontSize: 22px
    fontWeight: '400'
    lineHeight: 26px
    letterSpacing: 0px
  label-header-caps:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '600'
    lineHeight: 16px
    letterSpacing: 1.6px
  label-kicker:
    fontFamily: Inter
    fontSize: 10px
    fontWeight: '600'
    lineHeight: 14px
    letterSpacing: 2px
  body-default:
    fontFamily: Inter
    fontSize: 13px
    fontWeight: '400'
    lineHeight: 21px
    letterSpacing: 0px
  body-instruction:
    fontFamily: Inter
    fontSize: 13px
    fontWeight: '400'
    lineHeight: 18px
    letterSpacing: 0px
  body-item-title:
    fontFamily: Inter
    fontSize: 13px
    fontWeight: '600'
    lineHeight: 18px
    letterSpacing: 0px
  label-counter:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '400'
    lineHeight: 16px
    letterSpacing: 0px
  label-step-active:
    fontFamily: Inter
    fontSize: 10px
    fontWeight: '600'
    lineHeight: 14px
    letterSpacing: 0px
  label-step-inactive:
    fontFamily: Inter
    fontSize: 10px
    fontWeight: '400'
    lineHeight: 14px
    letterSpacing: 0px
  caption-metadata:
    fontFamily: Inter
    fontSize: 10px
    fontWeight: '400'
    lineHeight: 14px
    letterSpacing: 0px
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  gutter: 1rem
  margin: 1.5rem
  space-xs: 0.25rem
  space-sm: 0.5rem
  space-md: 0.75rem
  space-lg: 1.25rem
  space-xl: 2rem
---

## Brand & Style

This design system embodies an evocative, dark editorial aesthetic tailored for narrative-rich RPG experiences, immersive codices, dark fantasy digital tools, and literary companion interfaces. 

It balances an antiquarian atmosphere with razor-sharp modern utility:
- **Literary Voice:** Classical, elegant serif titles evoke ancient tomes, illuminated manuscripts, and timeless epics.
- **Utilitarian Discipline:** Crisp, low-contrast sans-serif body copy and micro-metadata provide effortless clarity across complex inventories, stat matrices, and step progressions.
- **Atmospheric Restraint:** A deep charcoal canvas accented by aged gold conveys solemn prestige, artifactual weight, and tactile stillness without visual clutter.

## Colors

The palette is derived from an opaque, tactile dark spectrum with specialized functional mappings:

- **Fondo principal (`#141516`):** The foundational viewport and deepest canvas layer.
- **Superficie carbón (`#1E2021`):** Base structural container color for resting cards, panels, and navigation surfaces.
- **Superficie seleccionada (`#302B22`):** Warm, amber-tinted dark charcoal applied strictly to active or selected elements.
- **Dorado envejecido (`#C6A66A`):** The singular focal accent color, reserved for high-value typography, chapter kickers, active progress nodes, selected borders, and active status indicators.
- **Texto principal (`#F0EADF`):** High-clarity parchment white for major titles, item headers, and principal iconography.
- **Texto secundario (`#ACA9A2`):** Muted stone-grey for body text, general instructions, and item descriptions.
- **Estado inactivo (`#777974`):** Soft neutral for resting control borders, unselected indicators, and disabled microcopy.
- **Borde neutro (`#363737`):** Structural division lines, card outlines, and inactive linear progress tracks.
- **Trazo de confirmación (`#1B1915`):** Deep charcoal silhouette used for the checkmark glyph set directly against the aged gold active badge.

## Typography

The typography pairings establish a strict dichotomy between literary prestige and surgical digital legibility:

- **Literary Titles & Indices (`EB Garamond`):** Used for large page titles, section introductions, and roman numerals or section indices (e.g., `01`, `02`). Maintains close vertical line heights for title density and compact grace.
- **Functional Interface (`Inter`):** Drives all interactive components, form headers, item descriptions, and status trackers.
- **Letter Spacing Constraints:** Letter spacing remains strictly `0px` across all body text, counters, and titles, except for uppercase operational signifiers:
  - `label-header-caps` uses `1.6px` tracking for high-level screen anchors.
  - `label-kicker` uses `2px` tracking for chapter and section subtitles.

## Layout & Spacing

This design system uses a focused fluid layout with structural margins that optimize readability and tactical scanning:

- **Layout Grid:** A dense 4-column structure on mobile devices expanding into an 8-column layout on tablet and 12-column layout on desktop viewports. Maximum readable content width is capped at `840px` for inventory and creation flows to preserve intimacy.
- **Spacing Scale:**
  - `space-xs` (4px): Used between paired metadata strings, micro badges, and indicator dots.
  - `space-sm` (8px): Used between headers and their subtitles, or internal card row layouts.
  - `space-md` (12px): Standard internal padding for cards, selectable cells, and utility bars.
  - `space-lg` (20px): Structural vertical separation between independent steps and content blocks.
  - `space-xl` (32px): Chapter divisions and major visual section separation.
- **Dividers & Rules:** Horizontal keylines use `#363737` with a height of 1px to cleanly segment the canvas without creating visual weight.

## Elevation & Depth

Visual hierarchy is established strictly through tonal layering and micro-borders rather than drop shadows:

- **Canvas Foundation:** `#141516` sits as the lowest depth layer.
- **Resting Panels & Cards:** `#1E2021` provides the base surface elevation, outlined by a 1px solid `#363737` border. No drop shadow is applied; depth is defined by border luminosity.
- **Active / Focused Surfaces:** When selected, surfaces transition to `#302B22` and their outline shifts from `#363737` to `#C6A66A`.
- **Floating Modals & Overlays:** Use `#1E2021` with a 1px solid border in `#777974` and an ambient diffuse shadow of `0 12px 32px rgba(0, 0, 0, 0.65)`.

## Shapes

The interface embraces a subtle, compact rounding scale that feels precise, architectural, and deliberate:

- Base controls, cards, and input surfaces employ `roundedness: 1` (4px / `0.25rem`), preserving an editorial, geometric structure without harsh sharpness.
- Status chips, indicator tags, and confirmation checkboxes utilize a soft continuous squircle or circular geometry to provide instant visual distinction from cards and structural containers.

## Components

### Selectable Inventory & Option Cards
- **Resting State:** Surface background `#1E2021`, 1px border `#363737`, padding `space-md`, border-radius 4px. Item titles set in `body-item-title` with `#F0EADF`. Subtitle or metadata set in `caption-metadata` with `#ACA9A2`.
- **Selected State:** Surface background `#302B22`, 1px border `#C6A66A`. Houses an active indicator checkbox or badge in the upper right.

### Selection Badges & Checkmarks
- **Unselected:** Circular 16px glyph with a 1.5px border in `#777974` and transparent center.
- **Selected:** Circular 16px solid fill in `#C6A66A`, displaying the check icon drawn with a 1.5px stroke in `#1B1915`.

### Buttons
- **Primary / Action Button:** Solid `#C6A66A` background with `#141516` bold text, radius 4px, height 40px.
- **Secondary / Return Button:** Surface background `#1E2021`, 1px border `#363737`, text in `#F0EADF`, hover outline shifts to `#777974`.
- **Ghost / Link Button:** Transparent background, text in `#ACA9A2`, active text shifts to `#C6A66A`.

### Progress Steppers & Trackers
- **Step Labels:** Active label in `label-step-active` with `#C6A66A`. Inactive or future step labels in `label-step-inactive` with `#777974`.
- **Progress Track:** 2px horizontal line. Filled portion rendered in `#C6A66A`; unfilled resting track rendered in `#363737`.

### Input Fields
- **Container:** Background `#141516`, 1px border `#363737`, 4px radius, height 40px, padding `0 12px`.
- **Typography:** Value text in `#F0EADF`, placeholder text in `#777974` (`body-default`).
- **Focus:** Border transitions smoothly to `#C6A66A`.