---
to: src/assets/scss/mixins/_triangles.scss
---
@mixin css-triangle($color, $direction, $size: 6px, $position: absolute, $round: false){
    @include pseudo($pos: $position);
    width: 0;
    height: 0;

    @if $round { border-radius: 4px; }

    @if $direction == down {
        border-left: $size solid transparent;
        border-right: $size solid transparent;
        border-top: $size solid $color;
        margin-top: 0 - round( $size / 2.5 );
    } @else if $direction == up {
        border-left: $size solid transparent;
        border-right: $size solid transparent;
        border-bottom: $size solid $color;
        margin-bottom: 0 - round( $size / 2.5 );
    } @else if $direction == right {
        border-top: $size solid transparent;
        border-bottom: $size solid transparent;
        border-left: $size solid $color;
        margin-right: -$size;
    } @else if  $direction == left {
        border-top: $size solid transparent;
        border-bottom: $size solid transparent;
        border-right: $size solid $color;
        margin-left: -$size;
    }
}
