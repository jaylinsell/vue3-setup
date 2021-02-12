module.exports = [
    {
      type: 'input',
      name: 'name',
      message: 'Name:',
      validate(value) {
        if (!value.length) {
          return 'Helper functions must have a name.'
        }
        return true
      },
    },
  ]
