// @ts-check
const baseWebpackConfig = require("../../../common/config/webpack.base.config");

/**
 * @type {import("webpack").Configuration}
 */
module.exports = {
  ...baseWebpackConfig,
  entry: {
    main: "./src/main.ts",
  },
};
