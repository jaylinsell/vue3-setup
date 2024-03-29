---
to: src/assets/scss/utils/_icon.scss
---
:root {
    // size
    --icon-xxs: 12px;
    --icon-xs:  16px;
    --icon-sm:  24px;
    --icon-md:  32px;
    --icon-lg:  48px;
    --icon-xl:  64px;
    --icon-xxl: 128px;
  }

  .icon {
    display: inline-block;
    color: inherit;
    fill: currentColor;
    height: 1em;
    width: 1em;
    line-height: 1;
    flex-shrink: 0;
    max-width: initial;
  }

  // icon size
  .icon--xxs { font-size: var(--icon-xxs); }
  .icon--xs  { font-size: var(--icon-xs); }
  .icon--sm  { font-size: var(--icon-sm); }
  .icon--md  { font-size: var(--icon-md); }
  .icon--lg  { font-size: var(--icon-lg); }
  .icon--xl  { font-size: var(--icon-xl); }
  .icon--xxl { font-size: var(--icon-xxl); }

  .icon--is-spinning { // rotate the icon infinitely
    animation: icon-spin 1s infinite linear;
  }

  @keyframes icon-spin {
    0% {
      transform: rotate(0deg);
    }
    100% {
      transform: rotate(360deg);
    }
  }

  // --------------------------------

  // SVG <symbol>

  // --------------------------------

  // enable icon color corrections
  .icon use {
    color: inherit;
    fill: currentColor;
  }
