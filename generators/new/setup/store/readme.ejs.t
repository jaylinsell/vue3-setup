---
to: src/store/README.md
---

# Vuex
Vuex is used to house global state, including modularised actions to get and set that state.

See: https://vuex.vuejs.org/

## Modules
We heavily utilise modules. Modules help us seperate logic specifically for areas of an app to help scalability and maintainability.

Each module consists of state, actions, types, getters and mutations.

### State
Sitting within the index.js file for the module.
All the module state belongs here, and rarely needs to be touched.

### Types
We use types to help with consistency across files, and to reduce errors and typos, since types are constants.
The benefits allow VS Code to present what types are available as we code, so that we're not guessing what actions and mutations need to be called.

Example usage:
**./types.js**
```
export default {
    GET_REQUEST: "GET_REQUEST"
}
```

**./actions.js**
```
import types from './types'

const getRequest = ({ commit }, payload) => commit(types.GET_REQUEST, payload)
```

Or we can take this further by:
```
import { GET_REQUEST } from './types'
const [GET_REQUEST] = ({ commit }, payload => commit(GET_REQUEST, payload)
```

### Actions
Actions handle asynchronous functions that get, or need to handle how data is handled on a global scale.
Actions can then dispatch (run) other actions, and **commit** data to be mutated back to the state.

**State should never be directly modified from Actions, always commit your data to a mutation to assign it to state.**
*Note: This rule will change in Vuex 5, as Mutations may drop based on the way proxies are now handled.

### Mutations
Mutations are where state is set and updated.
