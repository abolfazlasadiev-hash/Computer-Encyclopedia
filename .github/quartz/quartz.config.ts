import { QuartzConfig } from "./quartz/cfg"
import * as Plugin from "./quartz/plugins"

/**
 * Computer Encyclopedia
 * Quartz 4 configuration — built entirely in GitHub Actions.
 */
const config: QuartzConfig = {
  configuration: {
    pageTitle: "Computer Encyclopedia",
    pageTitleSuffix: " | Computer Encyclopedia",
    enableSPA: true,
    enablePopovers: true,
    analytics: null,
    locale: "en-US",
    baseUrl: "abolfazlasadiev-hash.github.io/Computer-Encyclopedia",
    ignorePatterns: ["private", "templates", ".obsidian", ".github"],
    defaultDateType: "modified",
    theme: {
      fontOrigin: "googleFonts",
      cdnCaching: true,
      typography: {
        header: "Space Grotesk",
        body: "Inter",
        code: "IBM Plex Mono",
      },
      colors: {
        lightMode: {
          light: "#f7f8fc",
          lightgray: "#e5e9f2",
          gray: "#8993a8",
          darkgray: "#343d52",
          dark: "#172033",
          secondary: "#3157a4",
          tertiary: "#5879c7",
          highlight: "rgba(49, 87, 164, 0.10)",
          textHighlight: "#ffe58a88",
        },
        darkMode: {
          light: "#101522",
          lightgray: "#202a3b",
          gray: "#71809b",
          darkgray: "#c3cde0",
          dark: "#edf2ff",
          secondary: "#8eafff",
          tertiary: "#6f91e8",
          highlight: "rgba(142, 175, 255, 0.12)",
          textHighlight: "#f0c96b66",
        },
      },
    },
  },
  plugins: {
    transformers: [
      Plugin.FrontMatter(),
      Plugin.CreatedModifiedDate({
        priority: ["frontmatter", "git", "filesystem"],
      }),
      Plugin.SyntaxHighlighting({
        theme: {
          light: "github-light",
          dark: "github-dark",
        },
        keepBackground: false,
      }),
      Plugin.ObsidianFlavoredMarkdown({ enableInHtmlEmbed: false }),
      Plugin.GitHubFlavoredMarkdown(),
      Plugin.TableOfContents(),
      Plugin.CrawlLinks({ markdownLinkResolution: "shortest" }),
      Plugin.Description(),
      Plugin.Latex({ renderEngine: "katex" }),
    ],
    filters: [Plugin.RemoveDrafts()],
    emitters: [
      Plugin.AliasRedirects(),
      Plugin.ComponentResources(),
      Plugin.ContentPage(),
      Plugin.FolderPage(),
      Plugin.TagPage(),
      Plugin.ContentIndex({
        enableSiteMap: true,
        enableRSS: true,
      }),
      Plugin.Assets(),
      Plugin.Static(),
      Plugin.Favicon(),
      Plugin.NotFoundPage(),
    ],
  },
}

export default config
