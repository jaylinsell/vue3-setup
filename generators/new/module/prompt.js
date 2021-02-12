module.exports = [
    {
      type: 'input',
      name: 'name',
      message: 'Module Name:',
      validate(value) {
        if (!value.length) {
          return 'Vuex modules must have a name.'
        }
        return true
      },
    },
  ]
