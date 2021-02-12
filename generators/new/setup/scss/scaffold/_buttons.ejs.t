---
to: src/assets/scss/scaffold/_buttons.scss
---
:root {
    --btn-font-size: 1em;
    --btn-font-weight: var(--font-medium);
    --btn-sm: calc(var(--btn-font-size) - 0.2em);
    --btn-md: calc(var(--btn-font-size) + 0.2em);
    --btn-lg: calc(var(--btn-font-size) + 0.4em);

    --btn-radius: 4px;

    // buttons
    --btn-primary-bg: var(--color-primary);
    --btn-primary-label: var(--color-white);
    --btn-primary-border: none;

    --btn-secondary-bg: var(--color-primary);
    --btn-secondary-label: var(--color-primary);
    --btn-secondary-border: var(--color-primary);

    --btn-disabled-bg: var(--color-contrast-low);
    --btn-disabled-label: var(--color-white);
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

.btn,
.formulate-input[data-classification='button'] button {
    color: var(--color-text);
    padding: var(--space-md) var(--space-lg);
    border-radius: var(--btn-radius);
    font-size: var(--btn-font-size);
    transition: .25s;
    font-weight: var(--btn-font-weight);
    border: 1px solid transparent;

    &--primary {
        background: var(--btn-primary-bg);
        color: var(--btn-primary-label);

        &:focus {
            border: 1px solid var(--color-primary-darker);
            box-shadow: 0 0 5px 0 var(--color-primary-lighter);
        }

        &:hover { background: var(--color-primary-lighter); }
    }

    &--secondary {
        // background: var(--btn-secondary-bg);
        background: transparent;
        border: 1px solid var(--btn-secondary-border);
        color: var(--btn-secondary-label);

        &:hover { background: var(--color-primary-light); color: white; }
    }

    &--full {
        display: flex;
        width: 100%;
        justify-content: center;
    }

    // button size
    &--sm {
        font-size: var(--btn-sm);
        font-weight: 500;
        letter-spacing: 0.3px;
    }
    &--md { font-size: var(--btn-md); }

    &--lg {
        padding: var(--space-md) var(--space-lg);
        @include breakpoint (xs) { padding: var(--space-md) var(--space-xl); }
    }

    &--icon {
        color: inherit;
        flex-shrink: 0;
        padding: 0;

        svg path{
            stroke: var(--btn-primary-label);
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
        cursor: not-allowed;
        background-color: var(--btn-disabled-bg);
        color: var(--btn-disabled-label);
        box-shadow: none;
        opacity: 0.6;

        &:visited { color: var(--btn-disabled-label); }
    }

    &--loading[disabled] {
        background-color: var(--color-contrast-medium);
    }

    &--success {
        &, &[disabled], &:hover, &:active, &:visited, &:focus {
            background: var(--color-success);
            border-color: var(--color-success);
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
    }

    &__group--toggle{
        display: inline-flex;
        margin-left: 1em;
        margin-bottom: var(--space-xl);

        .btn {
            justify-content: center;
            padding: var(--space-xs);
            width: 130px;
            background: var(--color-contrast-lower);
            color: var(--color-text);
            font-weight: var(--font-regular);

            &--active {
                background: var(--btn-primary-bg);
                color: var(--btn-primary-label);
                font-weight: var(--font-medium);
            }

            &:first-child { border-radius: var(--radius) 0 0 var(--radius); }
            &:last-child { border-radius: 0 var(--radius) var(--radius) 0; }
        }
    }
}

// formulate overrides
//------------------------------------------------
.formulate-input[data-classification='button'] {
    button{
        background: var(--btn-primary-bg);
        border: none;
        color: var(--btn-primary-label);
        font-family: var(--font-primary);
        font-weight: var(--btn-font-weight);
        line-height: 1;
        border: 1px solid transparent;
        transition: .2s var(--ease-out);

        &:active {
            border-color: transparent;
            background: var(--btn-primary-bg);
            box-shadow: 0 0 5px 0 var(--color-primary-lighter);
        }

        &:focus {
            border: 1px solid var(--color-primary-darker);
            box-shadow: 0 0 5px 0 var(--color-primary-lighter);
        }


        &:hover {
            border-color: transparent;
            background: var(--color-primary-lighter);
        }
    }

    &.btn--loading button {
        background: var(--color-contrast-low);
        border: 1px solid transparent!important;
        box-shadow: 0 0 5px 0 rgba(0,0,0,0.08)!important;
    }

    &.btn--success button {
        background: var(--color-success);
        border: 1px solid transparent!important;
        box-shadow: 0 0 5px 0 rgba(0,0,0,0.08)!important;
    }

    &.btn--full {
        > *,
        button {
            width: 100%;
            text-align: center;
            justify-content: center;
        }
    }
}


// buttons group
.btns {
    display: flex;
    flex-wrap: wrap;
    margin-bottom: calc(-1 * var(--space-xs));

    >* {
        margin-right: var(--space-xs);
        margin-bottom: var(--space-xs);

        &:last-of-type {
            margin-right: 0;
        }
    }
}
