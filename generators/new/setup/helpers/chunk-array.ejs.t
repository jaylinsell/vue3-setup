---
to: src/helpers/chunk-array.js
---
export default chunkArray = (array, size) => {
    if (array.length <= size) return [array]

    return [array.slice(0, size), ...chunkArray(array.slice(size), size)]
}