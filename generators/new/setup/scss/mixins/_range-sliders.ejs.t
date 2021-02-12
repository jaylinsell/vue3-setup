---
to: src/assets/scss/mixins/_range-sliders.scss
---
@mixin track {
    &::-webkit-slider-runnable-track { @content; }
    &::-moz-range-track { @content; }
    &::-ms-track { @content; }
}

@mixin thumb {
    &::-webkit-slider-thumb {
        margin-top: calc((var(--track-ball) - var(--track-height)) * -.5);
        @content;
    }
    &::-moz-range-thumb { @content; }
    &::-ms-thumb {
        margin-top: 0;
        @content;
    }
}
