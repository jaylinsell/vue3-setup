---
inject: true
to: src/router/index.js
before: newRoute
---
{
    name: '<%= h.changeCase.lower(name) %>',
    path: '/<%= h.changeCase.lower(name) %>',
    props: true,
    meta: { layout: layoutDefault },
    component: () => import(/* webpackChunkName: "<%= h.changeCase.title(name) %>" */ '../views/Page<%= h.changeCase.pascal(name) %>.vue')
},