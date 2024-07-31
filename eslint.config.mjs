import eslintPluginAstro from 'eslint-plugin-astro';

export default [
  // Extend configs here:
  ...eslintPluginAstro.configs.recommended,
  ...eslintPluginAstro.configs['jsx-a11y-recommended'],

  // {name: 'custom-rules'},
];
