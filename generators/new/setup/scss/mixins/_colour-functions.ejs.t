---
to: src/assets/scss/mixins/_colour-functions.scss
---
// --------------------------------
// Color functions
// --------------------------------

// define HSL color variable
@mixin defineColorHSL($color, $hue, $saturation, $lightness){
  #{$color}: unquote("hsl(#{$hue}, #{$saturation}, #{$lightness})");#{$color}-h: #{$hue};#{$color}-s: #{$saturation};#{$color}-l: #{$lightness};
}

// // return color with different opacity value
@function alpha($color, $opacity){
  $color: str-replace($color, 'var(');
  $color: str-replace($color, ')');
  $color-h: var(#{$color+'-h'});
  $color-s: var(#{$color+'-s'});
  $color-l: var(#{$color+'-l'});
  @return hsla($color-h, $color-s, $color-l, $opacity);
}

// // return color with different lightness value
@function lightness($color, $lightnessMultiplier){
  $color: str-replace($color, 'var(');
  $color: str-replace($color, ')');
  $color-h: var(#{$color+'-h'});
  $color-s: var(#{$color+'-s'});
  $color-l: var(#{$color+'-l'});
  @return hsl($color-h, $color-s, calc(#{$color-l} * #{$lightnessMultiplier}));
}
