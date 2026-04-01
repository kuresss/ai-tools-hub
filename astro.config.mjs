import { defineConfig } from 'astro/config';
import tailwindcss from '@tailwindcss/vite';

export default defineConfig({
  site: 'https://ai-tools-hub.netlify.app',
  vite: {
    plugins: [tailwindcss()],
  },
});
