--
to: src/assets/scss/README.md
--

# SCSS



## BEM Methodology

One of the most important aspects of the way the styles are set up, are to utilise BEM:

http://getbem.com/introduction/

https://en.bem.info/methodology/quick-start/



In short, it stands for Block Element Modifier. Class names should be used based on this.

Ie:

Block: .nav

Block element: .nav__link

Block element with modifier: .nav__link--active



Elements are seperated by two underscores.

Modifiers (active, disabled, has-error, etc) are seperated by two dashes.



### Usage

Don't use more than one of each block, element, or modifier:

**DONT:** `class="card__nav__item--active--disabled"`

**DO:** `class="card-nav__item--active card-nav__item--disabled`



*It's common practice to duplicate the classes before appending the modifier:

```

class="nav__item nav__item--active"

```



You can have different elements within elements, ie:

```

<article class="card__contents">

<nav class="card__nav sub-nav">

<a class="sub-nav__item sub-nav__item--active link link--active" href="#">Item</a>

</nav>

</article>

```



## BEM in SCSS

This is where BEM shines, not only does it scope your styles to avoid future conflicts and side-effects, it allows you to apply styles with a low specificity; so that in the case you need to override or modify styles, you can easily do so without using importants, or doing hacks.



An example

```

.nav {

display: block;

background: grey;



&__item {

color: black;



&--active { color: green; }

}

}

```



Would output as:

```

.nav { display: block; }

.nav__item { color: black; }

.nav__item--active { color: green; }

```

Which has no issues of a high specification, like `.nav .nav__item .nav__item--active { color: green }`



# SCSS Rules:

Try not to go beyond 3 levels deep of nesting. There are edge cases for doing so, but keep it at a minimum.

Styles are moslty done within external CSS files for better caching, and with the BEM methodology, styles are scoped.

There's no hard rule saying don't use CSS in components. If this is done, ensure css is scoped, and/or css modules are utilised.

## New SCSS components:
```
yarn new scss
```

## CSS Vars
The site heavily utilises CSS variables for development efficiency. IE11 is not supported, if IE11 needs to be supported, you can utilise POSTCSS, preferably:
"postcss-css-variables":  "git+https://github.com/CodyHouse/postcss-css-variables" due to their extensive configuration.

Bare in mind, using these fallbacks limit how variables can be used.