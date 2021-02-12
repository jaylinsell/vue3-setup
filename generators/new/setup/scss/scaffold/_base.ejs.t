---
to: src/assets/scss/scaffold/_base.scss
---
body {
    // font-size: var(--text-base-size);
    // font-family: var(--font-primary);
    // color: var(--color-text);
    font-weight: 100;
    overflow-x: hidden;
}

html, body { height: 100%; }

body > [class^="layout"] {
    display: flex;
    flex-wrap: wrap;

    > * { width: 100%; }
}

*,
*:before,
*:after {
    box-sizing: border-box;
}


main, .sidebar {
    min-height: 100vh;
    min-height: -moz-available;
    min-height: -webkit-fill-available;
}

.footnote {
    font-size: .9em;
    margin: var(--space-sm) 0;
}

.content {
    margin-bottom: var(--space-md);
}

.container{
    &--hidden, &--visible {
        overflow: hidden;
    }
}

.hide {
    &--desktop {
        @include breakpoint(sm) { display: none!important; }
    }
    &--mob, &--mobile {
        @include breakpoint(sm, 'not all') { display: none!important; }
    }
}
