# Hygen Scripts for Vue 3

## Setup

For initial setups, you'll need to do the following:

Initiate your new Vue CLI project.
Install hygen and cross-env to the project:

Due to a recent bug with the latest update (Still not resolved as of 19th Feb 2021 - but with a commit waiting), we need to use a previous version of hygen.
```
yarn add hygen@5.0.3 cross-env
```

Then add the following line to your package.json scripts object:
```
    "new": "cross-env HYGEN_TMPLS=generators hygen new"
```

Then in terminal, run `yarn new setup`
This will configure Vue, and add all the relevant files to be enterprise ready.

## Available Scripts
### Create new component:
Creates a new vue component and relative unit test.
Unit test checks if it is a component.
`yarn new component`

### Create new container:
Creates a new vue container and relative unit test.
Unit test checks if it is a component.
`yarn new container`

### Create new helper:
Creates a new file in ./helpers, with an export module ready for you to create helper functions on the fly
`yarn new helper`

### Create new vuex store module
Creates a new vuex module, with state, mutations, getters, types, actions and a unit test to validate if it's a vuex module.
`yarn new module`

### Create new SCSS file:
Creates a new SCSS file, and automatically imports the file into the relevant spot of the ./styles.scss file.
`yarn new SCSS`

### Create new route/view:
Creates a new view, and updates the ./router/ file with the basics so that the route is accessible.
`yarn new view`


--
Scripts put together by Jay Linsell
