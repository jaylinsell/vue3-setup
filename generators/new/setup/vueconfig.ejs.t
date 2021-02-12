---
to: vue.config.js
---
const path = require('path')
module.exports = {
  // https://github.com/neutrinojs/webpack-chain/tree/v4#getting-started

  css: {
    // Enable CSS source maps.
    sourceMap: true,
  },

  // we want this off, otherwise anyone can inspect your actual Vue files once they are deployed...
  productionSourceMap: false,

  configureWebpack: {
    resolve: {
      alias: {
        '@c': path.resolve(__dirname, 'src/components'),
        '@composables': path.resolve(__dirname, 'src/composables'),
        '@containers': path.resolve(__dirname, 'src/containers'),
        '@helpers': path.resolve(__dirname, 'src/helpers'),
        '@modules': path.resolve(_dirname, 'src/store/modules')
      }
    }
  }
}
