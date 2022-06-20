# Vue 3 Generators Setup (Latest version not commited)
## This version was made for vue-cli utilising Webpack, and may have some deprecated features now.

These are my custom hygen generator scripts utilised to improve my workflow efficiency.
Do note, these are relatively old now. I'm currently working on a newer version with stronger linting rules, and utilising Vite's glob import.

## Project setup
```
yarn install
```

### Run the setup config
This applies all the default configs I normally apply on each Vue site.

This includes testing tweaks, custom plugins, etc.
```
yarn new setup
```

### Add a new X
Each directory in generators/new relates to a generator.
For instance, if I need to add a new SCSS file, add some default markup to that template, add it to a specific folder (ie components, scaffold, variables), and import it into the styles.scss file, I'd run `yarn new scss` and follow the prompts I have set up.

```
yarn new <command>
```
