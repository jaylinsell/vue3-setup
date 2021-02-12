--
to: src/router/README.md
--
# Routing
Routing documentation can be found: https://router.vuejs.org/guide/

Layouts can be generated in the command line. This will generate a new .vue file in the `./views` directory, prefixed with "Page". Ie, PageHome.vue

A default route will also be injected into the `./router/index.js` file, including a default layout.

```
yarn new view
```

## Layouts
Each route takes meta object of what "Layout" should be used.
In most cases, this will always be the default layout, but there may be instances where different layouts are required, like a login screen.

The meta object should be the .vue component of the layout; where the `Page< Name >.vue` will render in the layouts `< router-view /> `

## Route Guards
Certain routes and views have global route guards that manage user access based on their authentication.
