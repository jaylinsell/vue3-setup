---
to: src/assets/scss/mixins/_ellipsis.scss
---
@mixin ellipsis($truncation-boundary) {
    max-width: $truncation-boundary;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
