---
to: src/store/index.js
---
import { createStore } from 'vuex'
import modules from '@/plugins/register-modules'

export default createStore({
    modules
})
