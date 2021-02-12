---
to: src/assets/scss/mixins/_mixins.scss
---
// edit font rendering -> tip: use for light text on dark backgrounds
@mixin fontSmooth {
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
  }

  // crop top space on text elements - caused by line height
  @mixin lhCrop($line-height, $capital-letter: 1) {
    &::before {
      content: '';
      display: block;
      height: 0;
      width: 0;
      margin-top: calc((#{$capital-letter} - #{$line-height}) * 0.5em);
    }
  }

  @mixin size ($width: 1em, $height: $width) {
    width: $width;
    height: $height
  }

// --------------------------------

// Edit Units

// --------------------------------

@mixin spaceUnit($space-unit) { // edit the space unit on a component level
    --space-unit:  #{$space-unit};
    --space-xxxxs: calc(0.125 * #{$space-unit});
    --space-xxxs:  calc(0.25 * #{$space-unit});
    --space-xxs:   calc(0.375 * #{$space-unit});
    --space-xs:    calc(0.5 * #{$space-unit});
    --space-sm:    calc(0.75 * #{$space-unit});
    --space-md:    calc(1.25 * #{$space-unit});
    --space-lg:    calc(2 * #{$space-unit});
    --space-xl:    calc(3.25 * #{$space-unit});
    --space-xxl:   calc(5.25 * #{$space-unit});
    --space-xxxl:  calc(8.5 * #{$space-unit});
    --space-xxxxl: calc(13.75 * #{$space-unit});
    --component-padding: var(--space-md);
  }

  @mixin textUnit($text-unit, $text-scale-ratio: 1.2) { // edit the text unit and the type scale on a component level
    --text-xs: calc((#{$text-unit} / #{$text-scale-ratio}) / #{$text-scale-ratio});
    --text-sm: calc(var(--text-xs) * #{$text-scale-ratio});
    --text-md: calc(var(--text-sm) * #{$text-scale-ratio} * #{$text-scale-ratio});
    --text-lg: calc(var(--text-md) * #{$text-scale-ratio});
    --text-xl: calc(var(--text-lg) * #{$text-scale-ratio});
    --text-xxl: calc(var(--text-xl) * #{$text-scale-ratio});
    --text-xxxl: calc(var(--text-xxl) * #{$text-scale-ratio});
    font-size: $text-unit;
  }
