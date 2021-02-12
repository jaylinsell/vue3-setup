---
to: src/assets/scss/components/_tabs.scss
---
:root {
    --tab-color: var(--color-black);
    --tab-border: var(--color-link);
    --tab-border-height: 2px;
}

.tab {
    &__wrapper > header {
        margin-bottom: var(--space-lg);
        border-bottom: 1px solid var(--color-border);
    }

    &__button {
        display: inline-block;
        outline: none;
        cursor: pointer;
        padding-bottom: var(--space-sm);
        font-size: 1em;
        text-align: center;
        color: var(--tab-color);
        transition: .1s ease-out;

        + .tab__button { margin-left: var(--space-md); }
        // this prevents the width of the button changing based on font weight
        // since it'll always reference the widest version utilising the pseudo el
        &:after {
            display: block;
            content: attr(title);
            font-weight: var(--font-bold);
            height: 1px;
            color: transparent;
            overflow: hidden;
            visibility: hidden;
        }

        &:focus,
        &:hover,
        &--active {
            font-weight: var(--font-bold);
        }
    }

    &__indicator {
        display: block;
        margin-top: -1px;
        position: absolute;
        height: var(--tab-border-height);
        background: var(--tab-border);
    }
}
