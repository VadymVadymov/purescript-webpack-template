const { CleanWebpackPlugin } = require("clean-webpack-plugin");
const CopyPlugin = require("copy-webpack-plugin");
const HtmlWebpackPlugin = require("html-webpack-plugin");
const MiniCssExtractPlugin = require('mini-css-extract-plugin');

module.exports = {
  performance: {
    maxEntrypointSize: 512000,
    maxAssetSize: 512000,
  },
  plugins: [
    new CleanWebpackPlugin(),
    new CopyPlugin({
      patterns: [
        { context: "assets/favicon/", from: "*.ico", to: "./" },
        { context: "assets/favicon/", from: "*.png", to: "./" },
      ],
      options: { concurrency: 100 },
    }),
    new HtmlWebpackPlugin({
      alwaysWriteToDisk: true,
      title: "Webpack/Purescript Starter",
      template: "src/index.html",
    }),
    new MiniCssExtractPlugin()
  ],
  module: {
    rules: [
      {
        test: /\.css$/i,
        use: [MiniCssExtractPlugin.loader, 'css-loader'],
      },
    ],
  },
};
