import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://ecv.nathanfourny.com',
  output: 'static',
  vite: {
    server: {
      host: true,
      allowedHosts: ['ecv.nathanfourny.com']
    }
  }
});
