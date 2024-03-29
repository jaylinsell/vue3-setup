---
to: src/assets/scss/mixins/_ally.scss
---
.sr-only { // content made available only to screen readers
    position: absolute;
    clip: rect(1px, 1px, 1px, 1px);
    clip-path: inset(50%);
    width: 1px;
    height: 1px;
    overflow: hidden;
    padding: 0;
    border: 0;
    white-space: nowrap;
}

  @mixin srHide {
    position: absolute;
    clip: rect(1px, 1px, 1px, 1px);
    clip-path: inset(50%);
  }

  @mixin srShow {
    position: static;
    clip: auto;
    clip-path: none;
  }
