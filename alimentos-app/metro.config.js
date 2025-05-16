// metro.config.js
const { getDefaultConfig } = require('expo/metro-config');

const config = getDefaultConfig(__dirname);

// Asegura que 'tslib' se incluya correctamente
config.resolver.extraNodeModules = {
  ...config.resolver.extraNodeModules,
  tslib: require.resolve('tslib'),
};

module.exports = config;
config.resolver.unstable_enablePackageExports = false;

