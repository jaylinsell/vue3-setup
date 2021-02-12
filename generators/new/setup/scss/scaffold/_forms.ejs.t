---
to: src/assets/scss/scaffold/_forms.scss
---
:root {
    // forms
    --form-checkbox-border: var(--color-black);
    --form-element-border: var(--color-contrast-low);
    --form-element-border-focus: var(--color-contrast-high);
    --form-element-border-error: var(--color-error);
    --form-element-icon: var(--color-black);
    --form-element-bg: var(--white);
    --form-label: var(--color-black);
    --form-placeholder: var(--color-contrast-low);
    --form-field-height: 3.2em;

    // range sliders
    --track-width: 100%;
    --track-height: 4px;
    --track-ball: 1.5em;
    --track-color: var(--color-contrast-lower);
    --track-thumb-color: var(--color-black);

    --form-error-bg: var(--color-error);
    --form-error-color: var(--color-white);
}

%checkboxBase {
    @include flex;
    $s: 1em;
    pointer-events: none;
    position: absolute;
    top: 2px;
    left: 2px;
    width: $s;
    height: $s;
    border: 1px solid var(--form-element-border);
    border-radius: var(--radius-sm);
    transition: .12s ease-out;
    z-index: 5;
}

%checkboxTick {
    opacity: 0;
    transition: .1s ease-out;
    stroke-width: .7em;
    fill: none;
    margin: auto;
    stroke: var(--color-primary);
    width: .6em;
    height: .6em;
    stroke-dashoffset: 1;
    stroke-dasharray: 1;
}

%checkboxTickActive {
    opacity: 1;
    stroke-dashoffset: 0;
}

[type="text"],
[type="email"],
[type="password"],
[type="number"],
[type="tel"],
[type="search"],
[type="url"],
textarea {
    @include input-placeholder { color: var(--form-placeholder) };
    font-family: var(--font-primary);
    outline: none;
    display: block;
    width: 100%;
    border: 1px solid var(--form-element-border);
    border-radius: var(--radius-sm);
    padding: var(--space-sm);
    height: var(--form-field-height);
    box-shadow: 0 0 0 0 rgba(0,0,0,0);

    &[disabled] {
        opacity: .5;
        cursor: not-allowed;
    }

    &:focus {
        border-color: var(--form-element-border-focus);
    }
}

select{
    padding: var(--space-sm);
    height: var(--form-field-height);
}

[type="radio"],
[type="checkbox"] {}

[type="hidden"] { display: none; }

label{
    font-weight: var(--font-medium);

    .form__error & {
        color: var(--form-error-bg);
     }
}

.form, form {
    margin-bottom: var(--space-xl);
}

.form {
    width: 100%;

    &__cb-group {
        cursor: pointer;
        @include flex;
        position: relative;
        margin-left: 1em;
        margin-bottom: var(--space-xs);
        width: 100%;

        input {
            opacity: 0;
            margin-left: -1em;
            margin-right: 1em;
        }
    }

    &__cb-box {
        @extend %checkboxBase;
        left: calc(-1em - -2px);
        cursor: pointer;

        svg {
            @extend %checkboxTick;
        }

        &--selected {
            border: 1px solid var(--form-element-border-focus);
            svg{ @extend %checkboxTickActive; }
        }
    }

    &__cb-label {
        width: calc(100% - 1em);
        font-weight: var(--font-regular);
        margin-top: 2px;

        &--selected {
            font-weight: var(--font-bold);
            color: var(--color-black);
        }
    }

    &__group {
        margin-bottom: 1em;
    }

    &__label {
        @include flexMiddle;
        width: 100%;

        label,
        [class^=add-new] & label { width: auto; }
        label + * { margin-left: auto; }
    }
}