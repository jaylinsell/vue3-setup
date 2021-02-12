---
to: src/services/README.md
---
# Services
Services are config and scripts you may reference throughout the app.
Not to be confused with helpers.

These do not hold state, or are to be used in place of state / props.
Refere to Vuex for state management, or utilise provide/inject:
https://v3.vuejs.org/guide/component-provide-inject.html


## Axios
A prime example is the Axios service.
Here we can define the base API route, set and call token headers, utilise interceptors and more.

This service is defined in main.js, and set as a global option with:
```
import { Axios } from '@/services/axios'
app.config.globalProperties.axios = axios
```