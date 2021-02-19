---
to: src/App.vue
force: true
---
<template>
  <component :is="$route.meta.layout" v-if="$route.meta.layout">
    <router-view />
  </component>
</template>

<script>
import { gsap } from 'gsap'
import * as ScrollToPlugin from "gsap/ScrollToPlugin"

export default {
  // TODO: Once the vue-meta plugin is Vue3 stable, the below will work.
  metaInfo: {
    titleTemplate: '%s | Title',
    meta: [
      {
        name: 'Description',
        content: 'Description content here...'
      },
      {
        property: 'og:title',
        content: 'Home',
        // following template options are identical
        // template: '%s - My page',
        template: chunk => `${chunk} - Title`,
        vmid: 'og:title'
      },
    ],
    link: [
      { rel: 'canonical', href: 'SITEURL' }
    ]
  },

  created () {
    // Need to register the scroll plugin for scroll to work throughout the app
    gsap.registerPlugin(ScrollToPlugin)
  },
}
</script>

<style lang="scss">
@import '@/assets/scss/styles.scss';
</style>
