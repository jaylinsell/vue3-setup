---
to: src/store/modules/App/mutations.js
---
import types from './types'

const sampleMutation = (state, payload) => state.sample = payload

export default {
    [types.TYPE]: sampleMutation
}

