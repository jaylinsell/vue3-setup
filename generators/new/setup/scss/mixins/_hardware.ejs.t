---
to: src/assets/scss/mixins/_hardware.scss
---
// for improving speed of animations if flickering
@mixin hardware($backface: true, $perspective: 1000) {
    @if $backface {
        backface-visibility: hidden;
    }
    perspective: $perspective;
}
