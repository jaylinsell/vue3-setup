---
to: src/main.js
force: true
---
import { createApp } from 'vue'
// import VueMeta from 'vue-meta' Currently awaiting Vue3 release. There is a Beta version for this currently.
import App from './App.vue'
import './registerServiceWorker'
import router from './router'
import store from './store'
// import registerComponents from '@/plugins/register-components'
import registerBaseComponents from '@/plugins/register-base-components'
import registerSVGs from '@/plugins/register-svgs'
import browserDetection from '@/plugins/browser-detection'
import { Axios } from '@/services/axios'

/*
    If you want to globally register ALL components to avoid having to @import them when required,
    use import registerComponents from '@/plugins/register-components' instead of '...-base-components'.
    You'll need to also update the .use(registerBaseComponents) to just .use(registerComponents).

    Note - there must be strict naming conventions in place to do this. If components are in sub folders - and contain
    a duplicate name from another component elsewhere in the app, the app will break due to naming conflicts.

    ie - this will cause errors due to two PrimaryButtons existing within the app:
    @/components/wba/PrimaryButton
    @/components/profile/PrimaryButton.vue
*/
export const app = createApp(App)
    .use(store)
    .use(router)
    .use(registerBaseComponents)
    .use(registerSVGs)
    .use(browserDetection)
    // .use(VueMeta) we will activate this once Vue Meta has releaed the stable version

// Makes axios a default part of the app. Usage: this.axios
app.config.globalProperties.axios = Axios

app.mount('#app')
