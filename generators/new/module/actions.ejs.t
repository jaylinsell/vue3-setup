---
to: src/store/modules/<%= h.changeCase.title(name) %>/actions.js
---
import types from './types'

const sampleFunc = ({ commit }) => commit(types.TYPE)

export default {
    sampleFunc
}
