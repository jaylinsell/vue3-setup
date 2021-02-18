---
to: src/assets/scss/scaffold/_buttons.scss
---
:root {
    --btn-label: var(--color-white);
    --btn-padding: var(--space-sm) var(--space-md);
    --btn-font-size: 1em;
    --btn-font-weight: var(--font-medium);

    --btn-sm: calc(var(--btn-font-size) - 0.2em);
    --btn-md: calc(var(--btn-font-size) + 0.2em);
    --btn-lg: calc(var(--btn-font-size) + 0.4em);

    --btn-radius: 4px;
    // transparent border so transitions to a border don't change the width
    --btn-border-width: 1px;
    --btn-border-color: transparent;
    --btn-bg: var(--color-primary);
    --btn-shadow: 0 0 0 0 rgba(0,0,0,0);
}


//btn reset...
button, [type=submit]{
    border: none;
    background: none;
}

.btn, button, [type=submit] {
    cursor: pointer;
    position: relative;
    display: inline-flex;
    white-space: nowrap;
    text-decoration: none;
    line-height: 1;
    text-align: center;
    font-family: var(--font-primary);

    .spinner {
        margin-left: var(--space-md);
        width: 1.25em;
        height: 1.25em;
        margin-top: -.25em;
        margin-bottom: -.25em;
    }
}

.btn {
    color: var(--btn-label);
    padding: var(--btn-padding);
    border-radius: var(--btn-radius);
    font-size: var(--btn-font-size);
    transition: .25s var(--ease-out);
    font-weight: var(--btn-font-weight);
    border: var(--btn-border-width) solid var(--btn-border-color);
    background: var(--btn-bg);

    &--primary {
        --btn-bg: var(--color-primary);
        &:hover { --btn-bg: var(--color-primary-dark); }
        &:focus {
            --btn-border-color: var(--color-primary-darker);
            --btn-shadow: 0 0 5px 0 var(--color-primary-lighter);
        }
    }

    &--secondary {
        --btn-bg: transparent;
        --btn-border-color: var(--color-primary);
        --btn-label: var(--color-primary);

        &:hover {
            --btn-bg: var(--color-primary-light);
            --btn-label: white;
        }
    }

    &--full {
        display: flex;
        width: 100%;
        justify-content: center;
    }

    // button size
    &--sm {
        --btn-font-size: calc(var(--btn-font-size) - 0.2em);
        font-weight: 500;
        letter-spacing: 0.3px;
    }
    &--md { --btn-font-size: calc(var(--btn-font-size) + 0.2em); }

    &--lg {
        --btn-font-size: calc(var(--btn-font-size) + 0.4em);
        --btn-padding: var(--space-md) var(--space-lg);
    }

    &--icon {
        color: inherit;
        flex-shrink: 0;
        padding: 0;

        svg path{
            stroke: var(--btn-label);
            stroke-width: 3px;
        }
    }

    &--link {
        padding: 0;
        margin: 0;
        font-weight: var(--font-regular);
        color: var(--color-link);
        font-size: 1em;
        outline: none;

        &:focus { font-weight: var(--font-medium); }
        &:hover { color: var(--color-link-hover); }
    }

    // feedback
    &[disabled] {
        &, &:visited {
            cursor: not-allowed;
            --btn-bg: var(--color-contrast-low);
            --btn-color: var(--white);
            box-shadow: none;
            opacity: 0.6;
        }
    }

    &--loading[disabled] {
        background-color: var(--color-contrast-medium);
    }

    &--success {
        &, &[disabled], &:hover, &:active, &:visited, &:focus {
            --btn-bg: var(--color-success);
            --btn-border-color: var(--color-success);
            outline: none;
            opacity: 1;
        }
    }

    &__icon {
        display: inline-block;
        vertical-align: middle;
        width: 1.25em;
        height: 1.25em;
        fill: currentColor;
    }

    &__group {
        @include flex;
        margin-bottom: calc(-1 * var(--space-xs));

        >* {
            margin-right: var(--space-xs);
            margin-bottom: var(--space-xs);

            &:last-of-type {
                margin-right: 0;
            }
        }
    }
}
