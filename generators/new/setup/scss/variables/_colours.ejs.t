---
to: src/assets/scss/variables/_colours.scss
---
/*
  if dark mode needs to be supported later,
  it can be achieved by just adding a [data-theme="dark"], and adjusting what global colours are applied.
*/
:root, [data-theme="default"] {
    // ACEM specific colours (hex based)
    --light-green: #B0BB24;
    --purple: #922790;
    --dark-blue: #0097A5;
    --light-blue: #76CEDF;

    // shades
    --black: #000;
    --grey-10: #2e2e31;
    --grey-8: #4D4D4D;
    --grey-7: #7b7a7d;
    --grey-6: #828282;
    --grey-5: #999999;
    --grey-4: #a5a5a6;
    --grey-3: #d1d0d2;
    --grey-2: #e6e6e6;
    --grey-1: #f6f6f6;
    --white: white;

  // main
  /*
    Generated using https://codyhouse.co/ds/globals/colors to help generate your colour variables to save time,
    and to allow you adjust the lightness and shades to compliment the UI and designs without changing the hues.
  */
  // main
  @include defineColorHSL(--color-primary-darker, 4, 75%, 28%);
  @include defineColorHSL(--color-primary-dark, 4, 75%, 38%);
  @include defineColorHSL(--color-primary, 4, 75%, 48%);
  @include defineColorHSL(--color-primary-light, 4, 75%, 58%);
  @include defineColorHSL(--color-primary-lighter, 4, 75%, 68%);

  @include defineColorHSL(--color-accent-darker, 345, 86%, 31%);
  @include defineColorHSL(--color-accent-dark, 345, 86%, 41%);
  @include defineColorHSL(--color-accent, 345, 86%, 51%);
  @include defineColorHSL(--color-accent-light, 345, 86%, 61%);
  @include defineColorHSL(--color-accent-lighter, 345, 86%, 71%);

  @include defineColorHSL(--color-secondary-darker, 70, 55%, 4%);
  @include defineColorHSL(--color-secondary-dark, 70, 55%, 14%);
  @include defineColorHSL(--color-secondary, 70, 55%, 24%);
  @include defineColorHSL(--color-secondary-light, 70, 55%, 34%);
  @include defineColorHSL(--color-secondary-lighter, 70, 55%, 44%);

  @include defineColorHSL(--color-black, 0, 0%, 0%);
  @include defineColorHSL(--color-white, 0, 0%, 100%);

  // feedback
  @include defineColorHSL(--color-warning-darker, 38, 97%, 34%);
  @include defineColorHSL(--color-warning-dark, 38, 97%, 44%);
  @include defineColorHSL(--color-warning, 38, 97%, 54%);
  @include defineColorHSL(--color-warning-light, 38, 97%, 64%);
  @include defineColorHSL(--color-warning-lighter, 38, 87%, 86%);

  @include defineColorHSL(--color-success-darker, 94, 48%, 36%);
  @include defineColorHSL(--color-success-dark, 94, 48%, 46%);
  @include defineColorHSL(--color-success, 94, 48%, 56%);
  @include defineColorHSL(--color-success-light, 94, 48%, 66%);
  @include defineColorHSL(--color-success-lighter, 94, 48%, 93%);

  @include defineColorHSL(--color-error-darker, 4, 100%, 10%);
  @include defineColorHSL(--color-error-dark, 4, 100%, 20%);
  @include defineColorHSL(--color-error, 4, 100%, 30%);
  @include defineColorHSL(--color-error-light, 4, 100%, 70%);
  @include defineColorHSL(--color-error-lighter, 4, 100%, 87%);

  // color contrasts
  @include defineColorHSL(--color-bg, 0, 0%, 100%);
  @include defineColorHSL(--color-contrast-lowest, 0, 0%, 97%);
  @include defineColorHSL(--color-contrast-lower, 0, 0%, 95%);
  @include defineColorHSL(--color-contrast-low, 240, 1%, 83%);
  @include defineColorHSL(--color-contrast-medium, 240, 1%, 48%);
  @include defineColorHSL(--color-contrast-high, 240, 4%, 20%);
  @include defineColorHSL(--color-contrast-higher, 240, 8%, 12%);

  // typography
  --color-text: var(--color-contrast-medium);
  --color-text-heading: var(--black);
  --color-text-label: var(--black);
  --color-text-subtle: var(--grey-5);
  --color-link: var(--color-primary);
  --color-link-visited: var(--color-primary-dark);
  --color-link-hover: var(--color-secondary);
  --color-mark: var(--color-secondary);
  --color-blockquote-border: var(--grey-2);

  // sections
  --bg-grey: var(--color-contrast-lower);

  // footer
  --color-footer-bg: var(--grey-10);
  --color-footer-links: var(--color-white);
  --color-footer-divider: var(--grey-8);

  // border
  --color-border: var(--grey-2);

  // icons
  --color-icon-primary: var(--grey-4);
  --color-icon-secondary: inherit;

  --color-bg-gradient: linear-gradient(-45deg, var(--white) 0%, var(--color-contrast-lowest) 100%);
}

// background-color
.bg-secondary-darker { background-color: alpha(var(--color-secondary-darker), var(--bg-o, 1)); }
.bg-secondary-dark { background-color: alpha(var(--color-secondary-dark), var(--bg-o, 1)); }
.bg-secondary { background-color: alpha(var(--color-secondary), var(--bg-o, 1)); }
.bg-secondary-light { background-color: alpha(var(--color-secondary-light), var(--bg-o, 1)); }
.bg-secondary-lighter { background-color: alpha(var(--color-secondary-lighter), var(--bg-o, 1)); }

// border-color
.border-secondary-darker { border-color: alpha(var(--color-secondary-darker), var(--bg-o, 1)); }
.border-secondary-dark { border-color: alpha(var(--color-secondary-dark), var(--bg-o, 1)); }
.border-secondary { border-color: alpha(var(--color-secondary), var(--bg-o, 1)); }
.border-secondary-light { border-color: alpha(var(--color-secondary-light), var(--bg-o, 1)); }
.border-secondary-lighter { border-color: alpha(var(--color-secondary-lighter), var(--bg-o, 1)); }
