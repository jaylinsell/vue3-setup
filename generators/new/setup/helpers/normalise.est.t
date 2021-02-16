---
to: src/helpers/normalise.js
---
/*
    Credit and usage:
    https://markus.oberlehner.net/blog/make-your-vuex-state-flat-state-normalization-with-vuex/
*/

export function normaliseRelations(data, fields) {
    return {
        ...data,
        ...fields.reduce((prev, field) => ({
            ...prev,
            [field]: Array.isArray(data[field])
                ? data[field].map(x => x.id)
                : data[field].id,
            }), {}),
    }
}

export function resolveRelations(data, fields, rootGetters) {
    return {
        ...data,
        ...fields.reduce((prev, field) => ({
                ...prev,
                [field]: Array.isArray(data[field])
                ? data[field].map(x => rootGetters[`${field}/find`](x))
                : rootGetters[`${field}/find`](data[field]),
            }), {}),
    }
}
