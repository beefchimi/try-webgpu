import { defineConfig } from 'astro/config';

export default defineConfig({
  devToolbar: {
    enabled: false,
  },
  server: {
    port: 3000,
    // host: '192.168.2.27',
  },
  vite: {
    // TODO: Figure out how to get this to work.
    preview: {
      port: 8000,
      strictPort: true,
    },
    css: {
      transformer: 'lightningcss',
      lightningcss: {
        drafts: {
          customMedia: true,
        },
      },
    },
  },
});
