---
to: src/assets/scss/mixins/_psuedo.scss
---
@mixin pseudo($display: block, $pos: absolute, $content: ''){
    content: $content;
    display: $display;
    position: $pos;
}
