import { defineConfig } from 'astro/config';
import tailwindcss from '@tailwindcss/vite';
import sitemap from '@astrojs/sitemap';

export default defineConfig({
  site: 'https://kuresss-ai-tools.netlify.app',
  integrations: [sitemap()],
  vite: {
    plugins: [tailwindcss()],
  },
});
