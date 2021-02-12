---
to: src/components/<%= h.changeCase.pascal(name) %>.vue
---
<%
if (blocks.indexOf('template') !== -1) {
%><template>
    <section>

    </section>
</template>

<%
}
if (blocks.indexOf('script') !== -1) {
%><script>
export default {
  <% if (blocks.indexOf('template') === -1) {
  %>render(h) {
    return <div/>
  }<% } %>
}
</script>
<%
}

if (blocks.indexOf('style') !== -1) {
%>
<style lang="scss" scoped>
</style><%
}
%>
