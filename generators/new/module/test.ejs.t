---
to: src/store/modules/<%= h.changeCase.kebab(name) %>/<%= h.changeCase.kebab(name) %>.spec.js
---
<%
  const fileName = h.changeCase.kebab(name)
  const importName = h.changeCase.camel(fileName) + 'Module'
%>import <%= importName %> from './' // will import the modules index.js

describe('@modules/name/<%= fileName %>', () => {
  it('exports a valid Vuex module', () => {
    expect(<%= importName %>).toBeAVuexModule()
  })
})