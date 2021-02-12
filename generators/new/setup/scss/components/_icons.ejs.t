---
to: src/assets/scss/components/_icons.scss
---
:root {
    --icon-size: .6em;
    // --icon-color: var(--color-primary)
}

.icon {
    &__arrow {
        position: relative;
        width: var(--icon-size);
        height: var(--icon-size);
        margin-left: .5em;

        &:before, &:after {
            content: "";
            display: block;
            width: 2px;
            height: 100%;
            border-radius: 3px;
            background: currentColor;
            position: absolute;
            bottom: -0.2em;
            transition: .2s var(--ease-out);
        }

        &:before { left: .05em; }
        &:after { right: .05em; }

        &--down {
            &:before { transform: rotate(-45deg); }
            &:after { transform: rotate(45deg); }
        }

        &--up {
            &:before { transform: rotate(45deg); }
            &:after { transform: rotate(-45deg); }
        }
    }
}
