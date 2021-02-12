---
to: src/assets/scss/mixins/_buttons.scss
---
@mixin btn(
    $background-color: var(--btn-primary-bg),
    $color: var(--btn-primary-label),
    $hover: var(--btn-primary-hover),
) {
    @include fontSmooth;
    background: $background-color;
    color: $color;

    &:visited { color: $color; }
    &:hover { background-color: $hover; }
    &:active { background-color: $hover; }
}
