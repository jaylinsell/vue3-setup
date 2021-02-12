---
to: src/assets/scss/transitions/_fade-transitions.scss
---
.fade-in{
    &-enter{ transform: translateY(var(--space-md)); }

    &-enter,
    &-leave-to{ opacity: 0; }

    &-enter-to,
    &-leave{ opacity: 1; transform: translateY(0)}

    &-enter-active,
    &-leave-active{
        transition: all 0.16s var(--ease-in);
    }
}

.fade-up-down {
    &-enter,
    &-leave-to{
        opacity: 0;
        transform: translateY(var(--space-md));
    }

    &-enter-to,
    &-leave{ opacity: 1; transform: translateY(0)}

    &-enter-active,
    &-leave-active{
        transition: all 0.16s var(--ease-in);
    }
}

.fade-in-tabs{
    &-enter{ transform: translateY(var(--space-md)); }

    &-enter,
    &-leave-to{ opacity: 0; }

    &-enter-to,
    &-leave{ opacity: 1; transform: translateY(0)}

    &-enter-active,
    &-leave-active{
        transition: all 0.16s var(--ease-in);
    }
    &-leave-active {
        height: 0;
        overflow: hidden;
        position: relative;
    }
}
