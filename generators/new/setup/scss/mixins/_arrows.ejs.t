---
to: src/assets/scss/mixins/_arrows.scss
---
@mixin arrow(
    $color: var(--color-primary),
    $direction: right,
    $size: .75em,
    $position: relative,
    $radius: 3px,
    $stroke: 2px
){
    width: $size;
    height: $size;
    border-right: solid $stroke $color;
    border-bottom: solid $stroke $color;
    border-bottom-right-radius: $radius;
    transition: .2s ease-out;

    @if $direction == down {
        transform: rotate(45deg)
    } @else if $direction == up {
        transform: rotate(-135deg)
    } @else if $direction == right {
        transform: rotate(-45deg)
    } @else if  $direction == left {
        transform: rotate(135deg)
    }
}
