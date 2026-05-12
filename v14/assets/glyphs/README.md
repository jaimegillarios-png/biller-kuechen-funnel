# Glyphs

Visual option icons used inside the Traumküche funnel.

## File contract

Every file in this folder must be a standalone SVG following this contract:

- **Canvas:** `viewBox="0 0 80 60"` (4:3, ~80×60 design grid)
- **Stroke colour:** `currentColor` only — never hardcode hex values
- **Stroke weight:** `0.9` for outlines, `1.2` for the strongest accents
- **Fill:** `none` for line art, `#FFFFFF` for filled-but-recoloured shapes
- **Filename:** kebab-case, no spaces, ends in `.svg`
- **No `<style>` tags, no embedded fonts, no `id` attributes**

Sizing in the funnel is controlled by CSS (see `.opt-glyph` rule). The
designer should never need to set widths or heights inside the SVG —
the browser scales the viewBox to the container.

## How to add a new icon

1. Draw it in Figma at 80 × 60 px on a transparent canvas
2. Use a single stroke colour (it will be themed via `currentColor`)
3. Outline all strokes (Object → Flatten / Outline Stroke)
4. Export → SVG, "Outline Text" on, no `id` attribute
5. Save into this folder using the kebab-case naming convention
6. Reference it in code by its filename (without `.svg`):

```jsx
{ id: "MY_OPT", label: "My option", glyph: "my-new-icon" }
```

7. Open `assets/glyphs/index.html` in a browser to verify it renders correctly

## Inventory

| Group | Files |
|---|---|
| Kitchen shapes (slide 1) | shape-kitchenette, shape-two-liner, shape-l-form, shape-u-form, shape-island, shape-other |
| Location (slide 2) | location-studio, location-home |
| Timing (slide 3) | timing-1-3, timing-4-6, timing-7-12, timing-12plus |
| Budget (slide 4) | budget-tier-1, budget-tier-2, budget-tier-3, budget-tier-4, budget-tier-5 |
