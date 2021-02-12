---
to: src/plugins/register-components.js
---
import { upperFirst, camelCase } from 'lodash'

export default {
    install: app => {
        const requireComponent = require.context(
            '../components/', true, /[\w-]+\.vue$/ // folder, subfolders, filename
        )

        const requireContainer = require.context(
            '../containers/', true, /[\w-]+\.vue$/
        )

        const registerTypes = type => type.keys().forEach(fileName => {
            const componentConfig = type(fileName)
            const filteredName = fileName.match(/([^/]*$)/)[0];

            const componentName = upperFirst(
                camelCase(
                    filteredName.replace(/^\.\.\//, '').replace(/\.\w+$/, '')
                )
            )

            app.component(componentName, componentConfig.default || componentConfig)
        })

        registerTypes(requireComponent)
        registerTypes(requireContainer)
    }
}
