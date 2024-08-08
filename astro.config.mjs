import mdx from "@astrojs/mdx";
import react from "@astrojs/react";
import sitemap from "@astrojs/sitemap";
import tailwind from "@astrojs/tailwind";
import AutoImport from "astro-auto-import";
import { defineConfig, squooshImageService } from "astro/config";
import remarkCollapse from "remark-collapse";
import remarkToc from "remark-toc";
import config from "./src/config/config.json";
import svelte from "@astrojs/svelte";
import auth from "auth-astro";

import node from "@astrojs/node";

// https://astro.build/config
export default defineConfig({
  site: config.site.base_url ? config.site.base_url : "http://gitasp.app",
  base: config.site.base_path ? config.site.base_path : "/",
  output: "hybrid",
  trailingSlash: config.site.trailing_slash ? "always" : "never",
  image: {
    service: squooshImageService()
  },
  security: {
    checkOrigin: true
  },
  integrations: [react(), sitemap(), tailwind({
    config: {
      applyBaseStyles: false
    }
  }), AutoImport({
    imports: ["@/shortcodes/Button", "@/shortcodes/Accordion", "@/shortcodes/Notice", "@/shortcodes/Video", "@/shortcodes/Youtube", "@/shortcodes/Tabs", "@/shortcodes/Tab"]
  }), mdx(), svelte(), auth()],
  markdown: {
    remarkPlugins: [remarkToc, [remarkCollapse, {
      test: "Table of contents"
    }]],
    shikiConfig: {
      theme: "one-dark-pro",
      wrap: true
    },
    extendDefaultPlugins: true
  },
  adapter: node({
    mode: "standalone"
  })
});
