---
to: src/helpers/kebab-to-title.js
---
export default kebabToTitle = val => {
    return val.split('-').map(c => c.charAt(0).toUpperCase() + c.slice(1)).join(' ')
}