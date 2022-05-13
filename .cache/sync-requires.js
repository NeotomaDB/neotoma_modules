const { hot } = require("react-hot-loader/root")

// prefer default export if available
const preferDefault = m => (m && m.default) || m


exports.components = {
  "component---cache-dev-404-page-js": hot(preferDefault(require("/Users/haritoto/Desktop/UWisconsin/neotoma/neotoma_workshop/.cache/dev-404-page.js"))),
  "component---src-pages-index-js": hot(preferDefault(require("/Users/haritoto/Desktop/UWisconsin/neotoma/neotoma_workshop/src/pages/index.js"))),
  "component---src-templates-chapter-js": hot(preferDefault(require("/Users/haritoto/Desktop/UWisconsin/neotoma/neotoma_workshop/src/templates/chapter.js")))
}

