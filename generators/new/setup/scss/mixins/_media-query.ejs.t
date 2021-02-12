---
to: src/assets/scss/mixins/_media-query.scss
---
$breakpoints: (
  xs: 32rem, // ~512px
  sm: 48rem, // ~768px
  md: 64rem, // ~1024px
  md2: 75rem, // 1200px
  lg: 80rem, // ~1280px
  xl: 90rem  // ~1440px
) !default;

@mixin breakpoint($breakpoint, $logic: false) {
  @if( $logic ) {
    @media #{$logic} and (min-width: map-get($map: $breakpoints, $key: $breakpoint)) { @content; }
  } @else {
    @media (min-width: map-get($map: $breakpoints, $key: $breakpoint)) { @content; }
  }
}

$mqs: (
    "phone":        400px,
    "phone-wide":   480px,
    "phablet":      560px,
    "tablet-small": 640px,
    "tablet":       768px,
    "tablet-wide":  1024px,
    "desktop":      1248px,
    "desktop-wide": 1440px
);

@mixin mq($width, $type: max) {
    @if map_has_key($mqs, $width) {
        $width: map_get($mqs, $width);
        @if $type == min {
            $width: $width + 1px;
        }
        @media only screen and (#{$type}-width: $width) {
            @content;
        }
    }
}
