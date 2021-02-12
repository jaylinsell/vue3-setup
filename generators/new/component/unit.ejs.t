---
to: tests/unit/<%= h.changeCase.pascal(name) %>.unit.js
---
<%
  const importName = h.changeCase.pascal(name)
%>
import <%= importName %> from '@/components/<%= importName %>.vue'
//import { shallowMount } from '@vue/test-utils'

describe('@/components/<%= h.changeCase.pascal(name) %>', () => {
  it('exports a valid component', () => {
    expect(<%= importName %>).toBeAComponent()
  })
})