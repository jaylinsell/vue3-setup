---
to: src/assets/scss/mixins/_placeholders.scss
---
@mixin input-placeholder {
    &.placeholder { @content; }
    &:-moz-placeholder { @content; }
    &::-moz-placeholder { @content; }
    &:-ms-input-placeholder { @content; }
    &::-webkit-input-placeholder { @content; }
}
