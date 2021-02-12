--
to: src/components/README.md
--
# Components

## Naming and structure
All namings of components must follow the Vue StyleGuide: https://vuejs.org/v2/style-guide/

Components should be built as dynamically as possible for scalability, and to reduce the complexity of the app.
Components that are commonly re-used throughout the application should be named App<Name>: ie,

 - AppButton,
 - AppCard,
 - etc.

More specific components should be named based on the module/section they relate to, and should be named based on two words where possible - ie:

 - WbaTitle
 - WbaSummary
 - WbaForm

This helps avoid name conflicts and organisation issues of having to move or require components that may be required in multiple modules or areas.



## Specific Use Cases

Some use cases may include components to be specifically related to just a module or view.

If the case arises, it's at this point we can look at creating a component modules folder specifically for those cases, or include those components in the Views directory, along with the view the component relates to.

Example case would be:

- Views
	- WBAs
		- WbaForm
		- WbaIntro
		- WbaSummary



## Create New Component
All components can be generated via the command line, and will include a relevant test file in the tests/ directory.
```

yarn new component

```
