---
to: tests/unit/Container<%= h.changeCase.pascal(name) %>.unit.js
---
<%
  const importName = h.changeCase.pascal(name)
%>
import <%= importName %> from '@/containers/<%= importName %>.vue'
//import { shallowMount } from '@vue/test-utils'

describe('@/containers/<%= h.changeCase.pascal(name) %>', () => {
  it('exports a valid component', () => {
    expect(<%= importName %>).toBeAComponent()
  })
})