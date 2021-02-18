---
to: src/helpers/titlecase.js
---
export default toTitleCase = val => {
    const splitWords = val.split(' ').map(c => c.charAt(0).toUpperCase() + c.slice(1)).join(' ')

    return splitWords
}