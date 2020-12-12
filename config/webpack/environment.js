const webpack = require('webpack')
const { environment } = require('@rails/webpacker')
const { VueLoaderPlugin } = require('vue-loader')
const vue = require('./loaders/vue')
const pug =  require('./loaders/pug')
const coffee =  require('./loaders/coffee')

environment.loaders.prepend('pug', pug)
environment.loaders.prepend('coffee', coffee)
environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)

environment.loaders.get('sass').use.splice(-1, 0, {
    loader: 'resolve-url-loader'
});

environment.plugins.append(
    'Provide',
    new webpack.ProvidePlugin({
        'window.jQuery': 'jquery',
        'window.$': 'jquery',
        jQuery: 'jquery',
        $: 'jquery',
        jquery: 'jquery'
    })
)

module.exports = environment
