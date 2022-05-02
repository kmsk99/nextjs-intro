/** @type {import('next').NextConfig} */

module.exports = {
  nextConfig: {
    reactStrictMode: true,
  },
  webpackDevMiddleware: config => {
    config.watchOptions = {
      poll: 1000,
      aggregateTimeout: 300,
    }
    return config
  },
}
