---
to: src/assets/scss/components/_spinner.scss
---
:root {
    --spinner-color: var(--color-primary);
}

.spinner {
    color: var(--spinner-color);
    width: 40px;
    height: 40px;
    position: relative;
    animation: spinner-spin 2.5s infinite linear both;

    .btn--primary &,
    .formulate-input-element--submit & { color: white; }

    &__dot {
        color: currentColor;
        width: 100%;
        height: 100%;
        position: absolute;
        left: 0;
        top: 0;
        animation: spinner-dot 2.0s infinite ease-in-out both;

        &:before {
            content: '';
            display: block;
            width: 25%;
            height: 25%;
            background-color: currentColor;
            border-radius: 100%;
            animation: spinner-dot-before 2.0s infinite ease-in-out both;
        }

        &:nth-child(1) { &, &:before { animation-delay: -1.1s; } }
        &:nth-child(2) { &, &:before { animation-delay: -1.0s; } }
        &:nth-child(3) { &, &:before { animation-delay: -0.9s; } }
        &:nth-child(4) { &, &:before { animation-delay: -0.8s; } }
        &:nth-child(5) { &, &:before { animation-delay: -0.7s; } }
        &:nth-child(6) { &, &:before { animation-delay: -0.6s; } }
    }
}

@keyframes spinner-spin {
    100% { transform: rotate(360deg); }
}

@keyframes spinner-dot {
    80%, 100% { transform: rotate(360deg); }
}

@keyframes spinner-dot-before {
    50% {
        transform: scale(0.4);
    } 100%, 0% {
        transform: scale(1.0);
    }
}
