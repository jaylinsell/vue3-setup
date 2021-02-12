module.exports = [
    {
        type: 'input',
        name: 'name',
        message: 'Container Name',
        validate(value) {
            if (!value.length) {
                return 'Containers must have a name'
            }
            return true

        }
    },
    {
        type: 'multiselect',
        name: 'blocks',
        message: 'Blocks:',
        initial: ['template', 'script'],
        choices: [
            {
                name: 'template',
                message: '<template>',
            },
            {
                name: 'script',
                message: '<script>',
            },
            {
                name: 'style',
                message: '<style>',
            },
        ],
        validate(value) {
            if (value.indexOf('script') === -1 && value.indexOf('template') === -1) {
                return 'Components require at least a <script> or <template> tag.'
            }
            return true
        },
    },
]
