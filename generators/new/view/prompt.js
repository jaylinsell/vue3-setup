module.exports = [
    {
        type: 'input',
        name: 'name',
        message: 'Page & Slug Name',
        validate(value) {
            if (!value.length) {
                return 'Views must have a name.'
            }
            return true
        },
    }
]
