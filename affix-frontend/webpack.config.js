const NodePolyfillPlugin = require("node-polyfill-webpack-plugin")

module.exports = {
    // Other rules...
    resolve: {
        // ... rest of the resolve config
        fallback: {
          "path": require.resolve("path-browserify"),
          "stream": require.resolve("stream-browserify")
        },
    },
    plugins: [
        new NodePolyfillPlugin()
    ]
}