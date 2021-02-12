---
to: src/store/modules/<%= h.changeCase.title(name) %>/index.js
---
import actions from './actions'
import mutations from './mutations'
import getters from './getters'

const namespaced = true

const state = {

}

export default {
    namespaced,
    state,
    actions,
    mutations,
    getters
}
