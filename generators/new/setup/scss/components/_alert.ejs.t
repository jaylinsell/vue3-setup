---
to: src/assets/scss/components/_alert.scss
---
:root {
    --alert-color: var(--black);
    --alert-bg: transparent;
    --alert-border: var(--black);
}

.alert {
    display: block;
    align-self: flex-start;
    height: auto;
    overflow: hidden;
    text-overflow: ellipsis;
    text-align: left;
    border-bottom: 1px solid var(--alert-border);
    padding-bottom: var(--space-md);
    margin-bottom: var(--space-md);

    &--center { text-align: center; }

    &__title { color: var(--black); }

    &--info {}
    &--success {}
    &--warning {}
    &--error {}
}
