---
to: src/assets/scss/scaffold/_fonts.scss
---
:root {
    // font family
    --font-primary: 'Helvetica Neue LT Std', sans-serif;
    --font-secondary: var(--font-primary);

    // weights:
    --font-light: 300;
    --font-regular: 400;
    --font-medium: 600;
    --font-bold: 900;

    // body font size
    --text-base-size: 1em;

    // type scale
    --text-scale-ratio: 1.3;
    --text-xs: calc((1em / var(--text-scale-ratio)) / var(--text-scale-ratio));
    --text-sm: calc(var(--text-xs) * var(--text-scale-ratio));
    --text-md: calc(var(--text-sm) * var(--text-scale-ratio) * 1.2);
    --text-lg: calc(var(--text-md) * var(--text-scale-ratio));
    --text-xl: calc(var(--text-lg) * var(--text-scale-ratio));
    --text-xxl: calc(var(--text-xl) * var(--text-scale-ratio));
    --text-xxxl: calc(var(--text-xxl) * var(--text-scale-ratio));
    --text-xxxxl: calc(var(--text-xxxl) * var(--text-scale-ratio));

    // line-height
    --body-line-height: 1.5;
    --heading-line-height: 1.2;
    --intro-line-height: 1.25;

    // capital letters - used in combo with the lhCrop mixin
    --font-primary-capital-letter: 1;
  }

@supports(--css: variables) {
  :root {
    @include breakpoint(md) {
      --text-base-size: 1.25em;
      --text-scale-ratio: 1.25;
    }
  }
}

body {
    -webkit-font-smoothing: antialiased;
    font-weight: var(--font-regular);
    font-size: var(--text-base-size);
    font-family: var(--font-primary);
    color: var(--color-text);
}

h1, h2, h3, h4, form legend {
    color: var(--color-text-heading);
    margin-bottom: var(--space-xxs);
    line-height: var(--heading-line-height);
    font-weight: var(--font-bold);
}

// text size
.text--xxxl { font-size: var(--text-xxxl); }
h1, .text--xxl { font-size: var(--text-xxl); }
h2, .text--xl { font-size: var(--text-lg); }
h3, .text--lg { font-size: var(--text-md); }
h4, .text--md { font-size: var(--text-sm); }
.text--sm, small { font-size: var(--text-sm); }
.text--xs { font-size: var(--text-xs); }

p {
  line-height: var(--body-line-height);
  margin-bottom: var(--space-sm);

  // + p { margin-top: var(--space-sm); }
}

a {
    color: var(--color-link);
    transition: .2s var(--ease-out);

    &:visited { color: var(--color-link-visited); }
    &:hover{ color: var(--color-link-hover); }
}

b, strong { font-weight: bold; }

.text-container {
    h2, h3, h4 { margin-top: var(--space-sm); }
    ul, ol, p { margin-bottom: var(--space-md); }

    ul, ol {
		list-style-position: outside;
        padding-left: 24px;
	}

	ul, ol {
        list-style-type: none;

        li{ line-height: var(--body-line-height); }
    }

    em { font-style: italic; }
    u { text-decoration: underline; }
}

// utility classes
.truncate {
    // truncate text if it exceeds parent
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
