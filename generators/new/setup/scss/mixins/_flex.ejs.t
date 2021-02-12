---
to: src/assets/scss/mixins/_flex.scss
---
@mixin flex {
    display: flex;
    flex-wrap: wrap;
}

@mixin flexMiddle {
    @include flex;
    align-items: center;
    align-content: center;
}

@mixin flexCenter {
    @include flexMiddle;
    justify-content: center;
}
