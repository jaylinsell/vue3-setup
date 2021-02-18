---
to: src/store/modules/<%= h.changeCase.title(name) %>/mutations.js
---
import types from './types'

const yourMutation = (state, payload) => state.sample = payload

export default {
    [types.TYPE]: yourMutation
}
