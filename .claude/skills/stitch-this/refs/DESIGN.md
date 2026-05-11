---
version: alpha
name: "Bento Mobile"
description: "Foodpanda Bento design system — Mobile scope (iOS). Sources: 📱 [Bento] Mobile · 🎨 [Bento] Brand Themes · 👑 [Bento] Pro Themes · [Core library] Tokens"

colors:
  primary: "Primary/color.primary.main"
  secondary: "Secondary/color.secondary.main"
  neutral: "Neutral/color.neutral50"
  surface: "Background/color.background.default"
  background: "Background/color.background.light"
  error: "Error/color.error.main"
  onPrimary: "Neutral/white"
  onSurface: "Neutral/color.neutral100"
  pro: "Pro/pro-primary"

typography:
  displayFont:
    style: "Mobile/title/display"
  headingFont:
    style: "Mobile/title/large"
  bodyFont:
    style: "Mobile/body/base"
    fontSize: "typography/body/base/font-size"
    weight: "typography/body/base/weight"
  captionFont:
    style: "Mobile/body/xsmall"

spacing:
  scale: "Spacing/spacing00 → Spacing/spacing12"

rounded:
  button: "CornerRadius/button"
  field: "CornerRadius/field"
  container: "CornerRadius/container"
  overlay: "CornerRadius/overlay"
  pill: "CornerRadius/pill"
  circle: "CornerRadius/circle"
  mini: "CornerRadius/mini"
  base: "CornerRadius/base"

components:
  button:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.onPrimary}"
  card:
    backgroundColor: "{colors.surface}"
    elevation: "low"
---

## Overview

Bento is Foodpanda's multi-brand design system. The Mobile token set targets iOS and uses a theming architecture where `Brand/brand-primary` and `Brand/brand-secondary` are overridden per market (Foodpanda, Mjam, etc.), while semantic tokens like `color.primary.main` remain stable across themes.

## Colors

### Brand (market-overridable)

| Token | Usage |
|---|---|
| `Brand/brand-primary` | Branded headers, hero elements, key UI anchors — resolved per active theme |
| `Brand/brand-secondary` | Contrast / highlight against brand-primary — also theme-resolved |
| `Brand/primary` | Fill style — primary brand color |
| `Brand/secondary` | Fill style — secondary brand color |

### Semantic — Primary / Secondary

| Token | Usage |
|---|---|
| `Primary/color.primary.main` | Main interactive elements — CTAs, active states |
| `Primary/color.primary.light01` | Tinted background — lightest level |
| `Primary/color.primary.light02` | Tinted background — light level |
| `Primary/color.primary.light04` | Tinted background — mid-light level |
| `Primary/color.primary.dark02` | Pressed state, high-contrast emphasis |
| `Secondary/color.secondary.main` | Supporting interactive elements |
| `Secondary/color.secondary.dark02` | Pressed state for secondary actions |
| `Overlay/color.overlay.primary` | Primary-tinted scrims |

### Semantic — Background

| Token | Usage |
|---|---|
| `Background/color.background.default` | Base screen background |
| `Background/color.background.light` | Elevated surface background (cards, sheets) |
| `Background/color.background.brand` | Full-bleed brand-colored section backgrounds |
| `Background/color.background.overlay` | Modal / bottom sheet dimming layer |

### Neutral Scale

| Token | Usage |
|---|---|
| `Neutral/white` | Primary backgrounds, text on dark surfaces |
| `Neutral/color.neutral00` | Backgrounds, strokes, frames |
| `Neutral/color.neutral05` | Backgrounds, strokes, frames |
| `Neutral/color.neutral10` | Backgrounds, strokes, frames |
| `Neutral/color.neutral20` | Backgrounds, strokes, frames |
| `Neutral/color.neutral30` | Backgrounds, strokes, frames |
| `Neutral/color.neutral50` | Backgrounds, strokes, frames |
| `Neutral/color.neutral80` | Backgrounds, strokes, frames |
| `Neutral/color.neutral100` | Backgrounds, strokes, frames |

### Semantic — Status

| Token | Usage |
|---|---|
| `Alert/color.alert.main` | Cautionary / warning state — primary |
| `Alert/color.alert.light` | Cautionary / warning state — light |
| `Error/color.error.main` | Destructive actions, validation errors |

### Surface Fills

| Token | Usage |
|---|---|
| `bds/color/surface/brand-primary-low-gradient` | Hero / top-of-screen gradient |
| `bds/color/surface/skeleton` | Skeleton loading state placeholder |
| `bds/color/surface/notification` | Notification badge background |
| `bds/color/surface/deal-low-gradient` | Subtle deal / promotion section background |
| `bds/color/surface/accent-low-gradient` | Accent-tinted content area background |
| `bds/color/surface/rating-gradient` | Rating badge background |
| `bds/color/surface/neutral-gradient` | Soft neutral gradient surface |
| `bds/color/surface/time-morning` | Time-of-day collection — morning |
| `bds/color/surface/time-afternoon` | Time-of-day collection — afternoon |
| `bds/color/surface/time-night` | Time-of-day collection — night |

### Border

| Token | Scope | Usage |
|---|---|---|
| `bds/color/border/divider` | ALL_SCOPES | Dividers and separators between content sections |
| `bds/color/border/loyalty` | STROKE | Borders on loyalty-related elements |
| `bds/color/border/loyalty-low` | STROKE | Loyalty borders in subtle / low-contrast contexts |

### Deals

| Token | Type | Usage |
|---|---|---|
| `Deals/deal-text-on-white` | Fill style | Deal label text color on white backgrounds |
| `Deals/deal-highlight-lvl1` | Variable + style | Lightest highlight on deal-related elements |
| `Deals/deal-highlight-lvl2` | Variable + style | Medium highlight on deal-related elements |

### Pro / Subscription

**Source:** `🎨 [Bento] Brand Themes` + `👑 [Bento] Pro Themes`
> Implementation note: Pro subtheme tokens require following Bento's activation instructions during implementation.

**Base colors:**

| Token | Type | Usage |
|---|---|---|
| `Pro/pro-primary` | Fill style | Main color for all subscription-related UI |
| `Pro/pro-gradient-start` | Fill style | Subscription gradient start — only use inside a gradient |
| `Pro/pro-gradient-end` | Fill style | Subscription gradient end — only use inside a gradient |

**Deal highlight scale** (subscription-specific, lightest → darkest):

| Token | Type | Usage |
|---|---|---|
| `Pro/pro-deal-highlight-1` | Variable + style | Lightest highlight on subscription deal elements |
| `Pro/pro-deal-highlight-2` | Variable + style | Low-contrast highlight on subscription deal elements |
| `Pro/pro-deal-highlight-3` | Variable + style | Medium highlight on subscription deal elements |
| `Pro/pro-deal-highlight-4` | Variable + style | Dark highlight on subscription deal elements |

**Surface:**

| Token | Usage |
|---|---|
| `bds/color/surface/pro-gradient-low` | Subtle gradient for subscription feature sections (purple → grey) |
| `bds/color/surface/promobanner` | Main background for promotional banners |
| `bds/color/surface/promobanner-low` | Low-contrast background for promotional banners |
| `bds/color/surface/promobanner-pro` | Promotional banner background for subscription members |
| `bds/color/surface/pro-pressed` | Background for subscription elements in pressed state |
| `bds/color/surface/loyalty-low` | Hint-of-color background for loyalty-related elements |

**Text:**

| Token | Scope | Usage |
|---|---|---|
| `bds/color/text/loyalty` | TEXT_FILL | Text communicating loyalty / subscription status |
| `bds/color/text/loyalty-low` | TEXT_FILL | Loyalty text in subtle / low-contrast contexts |
| `bds/color/text/promobanner` | TEXT_FILL | Text on promotional banners |
| `bds/color/text/notification` | TEXT_FILL | Text inside notification badges |

**Icon:**

| Token | Scope | Usage |
|---|---|---|
| `bds/color/icon/loyalty` | FRAME_FILL, SHAPE_FILL | Icons communicating loyalty status |
| `bds/color/icon/loyalty-low` | FRAME_FILL, SHAPE_FILL | Loyalty icons in subtle / low-contrast contexts |
| `bds/color/icon/promobanner` | ALL_SCOPES | Icons on promotional banners |
| `bds/color/icon/popular` | ALL_SCOPES | Icons highlighting restaurant popularity |
| `bds/color/icon/supervendor` | ALL_SCOPES | Icons for supervendor restaurant status |

## Typography

All mobile text styles target **iOS**. Library: `📱 [Bento] Mobile`.

### Title Scale

| Style | Usage |
|---|---|
| `Mobile/title/display` | Hero / marketing headlines |
| `Mobile/title/large` | Page-level section headings |
| `Mobile/title/medium` | Sub-section headings |
| `Mobile/title/small` | Component-level headings, list labels |

### Body Scale

| Style | Usage |
|---|---|
| `Mobile/body/base` | Primary reading text, descriptions |
| `Mobile/body/small` | Supporting / secondary body text |
| `Mobile/body/xsmall` | Captions, timestamps, metadata |

### Typography Variables

Font-size, weight, font-family, and line-height are exposed as platform variables in the `Platform` collection of `🎨 [Bento] Brand Themes`. These are the variables that can differ across brand themes.

#### Body

| Variable | Type | Scope |
|---|---|---|
| `typography/body/base/font-family` | STRING | ALL_SCOPES |
| `typography/body/base/font-size` | FLOAT | FONT_SIZE |
| `typography/body/base/weight` | STRING | ALL_SCOPES |
| `typography/body/base/line-height` | FLOAT | LINE_HEIGHT |
| `typography/body/small/font-family` | STRING | ALL_SCOPES |
| `typography/body/small/font-size` | FLOAT | FONT_SIZE |
| `typography/body/small/weight` | STRING | ALL_SCOPES |
| `typography/body/small/line-height` | FLOAT | LINE_HEIGHT |
| `typography/body/xsmall/font-family` | STRING | ALL_SCOPES |
| `typography/body/xsmall/font-size` | FLOAT | FONT_SIZE |
| `typography/body/xsmall/weight` | STRING | ALL_SCOPES |
| `typography/body/xsmall/line-height` | FLOAT | LINE_HEIGHT |

#### Highlight

Highlight is the emphasized / semi-bold variant of body text, used for prices, labels, and other short UI strings that need visual weight without being a heading.

| Variable | Type | Scope |
|---|---|---|
| `typography/highlight/base/font-family` | STRING | ALL_SCOPES |
| `typography/highlight/base/font-size` | FLOAT | FONT_SIZE |
| `typography/highlight/base/weight` | STRING | ALL_SCOPES |
| `typography/highlight/base/line-height` | FLOAT | LINE_HEIGHT |
| `typography/highlight/small/font-family` | STRING | ALL_SCOPES |
| `typography/highlight/small/font-size` | FLOAT | FONT_SIZE |
| `typography/highlight/small/weight` | STRING | ALL_SCOPES |
| `typography/highlight/small/line-height` | FLOAT | LINE_HEIGHT |
| `typography/highlight/xsmall/font-family` | STRING | ALL_SCOPES |
| `typography/highlight/xsmall/font-size` | FLOAT | FONT_SIZE |
| `typography/highlight/xsmall/weight` | STRING | ALL_SCOPES |
| `typography/highlight/xsmall/line-height` | FLOAT | LINE_HEIGHT |

#### Title

Title styles (`title-xxl`, `title-xl`, `title-xl-secondary`, `title-lg`, `title-md`, `title-md-secondary`, `title-sm`) do not have dedicated variable overrides in the Platform collection — their font properties are fixed in the text styles. Reference the Title Scale section above for usage guidance.

#### Primitives (shared font primitives)

| Variable | Type | Scope | Note |
|---|---|---|---|
| `Typography/font-family-sfpro` | STRING | FONT_FAMILY | iOS system font |

Line heights (from `[Core library] Tokens`): `Line height/line-height01` through `line-height05`

## Layout

### Spacing

**Source:** `🎨 [Bento] Brand Themes` — semantic spacing scale (scopes: WIDTH_HEIGHT · GAP · EFFECT_FLOAT)

| Token | Value |
|---|---|
| `xxxs` | 2px |
| `xxs` | 4px |
| `xs` | 8px |
| `st` | 12px |
| `sm` | 16px |
| `md` | 24px |
| `lg` | 32px |
| `xl` | 48px |
| `xxl` | 64px |
| `xxxl` | 80px |

Legacy numeric scale from `[Core library] Tokens`: `spacing00` through `spacing12` (WIDTH_HEIGHT · GAP · EFFECT_FLOAT).

## Elevation & Depth

Library: `📱 [Bento] Mobile`

- **`low`**: Base card and input elevation. Default for most surfaced elements.
- **`medium`**: Floating elements — bottom sheets, dropdowns, tooltips.
- **`high`**: Reserved for edge cases only. Avoid unless absolutely necessary.

## Shapes

**Source:** `🎨 [Bento] Brand Themes` — Brand collection (CORNER_RADIUS scope). Values vary per theme (Foodpanda / Foodora / Yemeksepeti).

| Token | Usage |
|---|---|
| `CornerRadius/button` | Buttons |
| `CornerRadius/button-pressed` | Pressed state of buttons |
| `CornerRadius/field` | Fields and text inputs |
| `CornerRadius/field-pressed` | Pressed state of fields |
| `CornerRadius/switch` | Switches |
| `CornerRadius/container` | Tiles and cards (non-interactive) |
| `CornerRadius/container-pressed` | Pressed state of tiles and cards |
| `CornerRadius/container-edge` | Edge-to-edge tiles and cards (full-width, no gaps) |
| `CornerRadius/media` | Images and videos |
| `CornerRadius/overlay` | Modals and bottom sheets |
| `CornerRadius/mini` | Small elements that need roundness but don't fit larger tokens, e.g. checkboxes |
| `CornerRadius/pill` | Pill-shaped elements, e.g. pills and search bars |
| `CornerRadius/circle` | Always circle-shaped elements regardless of brand, e.g. radio buttons |
| `CornerRadius/base` | Fallback for generic use cases that don't fit any other token |
| `CornerRadius/base-pressed` | Pressed state for elements using `base` |

## Components

<!-- TODO: Add component-level token overrides and usage notes (button, card, list item, etc.) -->

## Do's and Don'ts

**Do:**
- Use `Brand/brand-primary` (not `color.primary.main`) for purely branded, non-interactive elements like logos and hero headers.
- Use `color.primary.main` for interactive UI elements (buttons, links, toggles).
- Apply `bds/color/surface/*-gradient` styles only as fills on frame backgrounds, not on text.

**Don't:**
- Don't use Cape B2C, B2B, Rider, or Talabat theme variables — those are separate product lines.
- Don't hardcode hex values; always reference a named token.
- Don't use `high` elevation for cards or standard list items.

## Strokes

**Source:** `🎨 [Bento] Brand Themes` — Brand collection (STROKE_FLOAT scope). Values are uniform across Foodpanda, Foodora, and Yemeksepeti themes.

| Token | Value | Usage |
|---|---|---|
| `bds/stroke/static` | 0.5 | Decorative or structural elements |
| `bds/stroke/elevated` | 1 | Elements that overlay other elements |
| `bds/stroke/interactive` | 1 | Default interactive elements |
| `bds/stroke/interactive-subtle` | 0.5 | Subtle interactive elements |
| `bds/stroke/interactive-hover` | 1.5 | Hover states |
| `bds/stroke/interactive-focus` | 2 | Focus states |
| `bds/stroke/divider` | 1 | Dividers and separators |
| `bds/stroke/input` | 1 | Input fields and form elements |
| `bds/stroke/input-focus` | 1.5 | Input focus states |
| `bds/stroke/navigation` | 4 | Elements requiring immediate attention or strong visual dominance |
| `bds/stroke/icon` | 1.5 | All icons |
