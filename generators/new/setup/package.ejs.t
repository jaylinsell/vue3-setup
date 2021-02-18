---
inject: true
to: estlintrc.js
after: "test:unit"
---
    "test:unit:watch": "vue-cli-service test:unit --watch",
    "api": "json-server --watch db.json"