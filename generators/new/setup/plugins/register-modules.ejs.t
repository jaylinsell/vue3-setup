---
to: src/plugins/register-modules.js
---
const requireModule = require.context('../store/modules/', true, /\.js$/)
const modules = {}

requireModule.keys().forEach(fileName => {
    if (fileName.includes('index')) {
        const moduleName = fileName.replace(/\.\/|\/.\w+\.js$|\w+\/(?=\w+\/)/g, '')
        modules[moduleName] = requireModule(fileName).default
    }
})

export default modules
