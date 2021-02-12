---
to: src/containers/README.md
---
# Containers
Where possible, there may be many cases that groups of components are used to form larger components; which we then put in containers.

An example would be of a "Hero" section on a homepage. We would create a 'ContainerHomeHero.vue' file which housed all the components that formed this section.

## New containers
Using hygen to create containers will generate a relevant unit test in the tests folder, and will prefix the name with "Container" automatically.

```
yarn new container
```