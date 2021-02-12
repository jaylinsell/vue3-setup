---
to: src/assets/scss/mixins/_overlay.scss
---
@mixin overlay {
    display: block;
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 200;
    background: var(--color-black);
    opacity: 0.9;
}
