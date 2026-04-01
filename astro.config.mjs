import { defineConfig } from 'astro/config';
import tailwindcss from '@tailwindcss/vite';

export default defineConfig({
  site: 'https://kuresss-ai-tools.netlify.app',
  vite: {
    plugins: [tailwindcss()],
  },
});
