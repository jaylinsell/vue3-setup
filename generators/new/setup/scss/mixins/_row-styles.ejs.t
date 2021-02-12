---
to: src/assets/scss/mixins/_row-styles.scss
---
@mixin headerRow(
    $shadow: 0 0 0 0 rgba(0,0,0,0),
    $padding: var(--space-sm) var(--space-lg)
) {
    @include flexMiddle;
    align-items: center;
    width: 100%;
    min-height: 60px;
    padding: $padding;
    border-bottom: var(--divider);
    box-shadow: $shadow;
}
