---
to: src/assets/scss/mixins/_max-width.scss
---
@mixin maxWidth($columnCount, $columns: 12) {
    max-width: calc(100% / #{$columns} * #{$columnCount});
}

@mixin colWidth ($sidebar, $cols) {
    width: calc((100vw - #{$sidebar}) / 12 * #{$cols});
}

@mixin maxColWidth ($sidebar, $cols) {
    max-width: calc((100vw - #{$sidebar}) / 12 * #{$cols});
}
