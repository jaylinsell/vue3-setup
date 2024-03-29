---
to: src/assets/scss/variables/_effects.scss
---
:root{

    // radius
    --radius: .25rem;
    --radius-sm: calc(var(--radius, 0.25em)/2);
    --radius-md: var(--radius, 0.25em);
    --radius-lg: calc(var(--radius, 0.25em)*2);

    // box shadow
    --shadow-xs: 0 1px 2px rgba(0, 0, 0, .1); // lower depth;
    --shadow-sm: 0 1px 2px rgba(0, 0, 0, .085), 0 1px 8px rgba(0, 0, 0, .1); // low depth;
    --shadow-md: 0 1px 8px rgba(0, 0, 0, .085), 0 8px 24px rgba(0, 0, 0, .1); // medium depth
    --shadow-lg: 0 1px 8px rgba(0, 0, 0, .085), 0 16px 48px rgba(0, 0, 0, .085), 0 24px 60px rgba(0, 0, 0, .085); // high depth
    --shadow-xl: 0 1px 8px rgba(0, 0, 0, .085), 0 16px 64px rgba(0, 0, 0, .15), 0 24px 100px rgba(0, 0, 0, .15); // higher depth
    --shadow-bar: 0 5px 8px rgba(0, 0, 0, .085), 0 18px 24px rgba(0, 0, 0, .05);
    --shadow-up-lg: 0 -15px 12px -19px rgba(0, 0, 0, .085), 0 -32px 34px -14px rgba(0, 0, 0, .05);
    --shadow-up-sm: 0 -11px 12px -10px rgba(0, 0, 0, .085), 0 -22px 34px 10px rgba(0, 0, 0, .05);

    // timing functions
    // credits: https://github.com/ai/easings.net
    --bounce: cubic-bezier(0.175, 0.885, 0.32, 1.275);
    --ease-in-out: cubic-bezier(0.645, 0.045, 0.355, 1);
    --ease-in: cubic-bezier(0.55, 0.055, 0.675, 0.19);
    --ease-out: cubic-bezier(0.215, 0.61, 0.355, 1);
}
