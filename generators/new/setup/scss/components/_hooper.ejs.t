---
to: src/assets/scss/components/_hooper.scss
---
.hooper {
    .hooper{
        $height: 120px;
        position: relative;
        box-sizing: border-box;
        width: 100%;
        height: $height;
        outline: none;

        &.is-vertical .hooper-track {
            flex-direction: column;
            height: $height;
        }

        &.is-rtl { direction: rtl; }

        &-sr-only {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0, 0, 0, 0);
            border: 0;
        }

        &-slide {
            flex-shrink: 0;
            // height: 100%;
            margin: 0;
            padding: 0;
            list-style: none;
        }

        &-progress {
            position: absolute;
            top: 0;
            right: 0;
            left: 0;
            height: 4px;
            background-color: #efefef;

            &-inner {
                height: 100%;
                background-color: #4285f4;
                transition: 300ms;
            }
        }

        &-pagination {
            position: absolute;
            bottom: 0;
            right: 50%;
            transform: translateX(50%);
            display: flex;
            padding: 5px 10px;

            &.is-vertical {
                bottom: auto;
                right: 0;
                top: 50%;
                transform: translateY(-50%);

                .hooper {
                    &-indicators {
                        flex-direction: column;
                    }
                    &-indicator {
                    width: 6px;
                    }
                }
            }
        }

        &-indicators {
            display: flex;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        &-indicator{
            margin: 0 2px;
            width: 12px;
            height: 4px;
            border-radius: 4px;
            border: none;
            padding: 0;
            background-color: #fff;
            cursor: pointer;

            &:hover,
            &.is-active {
                background-color: #4285f4;
            }
        }

        &-next,
        &-prev {
            background-color: transparent;
            border: none;
            padding: 1em;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;

            &.is-disabled {
                opacity: 0.3;
                cursor: not-allowed;
            }
        }

        &-next { right: 0; }
        &-prev { left: 0; }

        &-navigation{
            &.is-vertical .hooper {
                &-next {
                    top: auto;
                    bottom: 0;
                    transform: initial;
                }

                &-prev {
                    top: 0;
                    bottom: auto;
                    right: 0;
                    left: auto;
                    transform: initial;
                }
            }

            &.is-rtl .hooper{
                &-prev {
                    left: auto;
                    right: 0;
                }

                &-next {
                    right: auto;
                    left: 0;
                }
            }
        }


        &-list {
            overflow: hidden;
            width: 100%;
            height: 100%;
        }
        &-track {
            display: flex;
            box-sizing: border-box;
            width: 100%;
            height: 100%;
            padding: 0;
            margin: 0;
        }
    }
}
