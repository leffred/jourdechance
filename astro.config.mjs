import { defineConfig } from 'astro/config';
import tailwind from "@astrojs/tailwind";
import sitemap from "@astrojs/sitemap";

// https://astro.build/config
export default defineConfig({
  // Ton domaine final (Indispensable pour le sitemap)
  site: 'https://www.jourdechance.com',
  
  integrations: [
    tailwind(), 
    sitemap()
  ],
});
