---
to: src/layouts/LayoutDefault.vue
---
<template>
    <div id="app" class="layout--default">
        <router-view :key="$route.params.id" />
    </div>
</template>
