---
to: src/plugins/register-svgs.js
---
export default {
    install: app => {
        const requireComponent = require.context(
            '../assets/svgs', true, /.+\.vue$/ // folder, subfolders, filename
        )

        const registerTypes = type => type.keys().forEach(fileName => {
            const componentConfig = requireComponent(fileName)
            const cleanName = fileName.replace(/.+\//, '').replace(/\.\w+$/, '')
            const componentName = `SVG${cleanName}`
            // console.log(cleanName)

            app.component(componentName, componentConfig.default || componentConfig)
        })

        registerTypes(requireComponent)
    }
}
