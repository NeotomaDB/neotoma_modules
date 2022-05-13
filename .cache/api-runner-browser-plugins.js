module.exports = [{
      plugin: require('../node_modules/gatsby-remark-images/gatsby-browser.js'),
      options: {"plugins":[],"maxWidth":790,"linkImagesToOriginal":true,"sizeByPixelDensity":false,"showCaptions":true,"quality":80,"withWebp":{"quality":80},"markdownCaptions":false,"backgroundColor":"white","tracedSVG":false,"loading":"lazy","disableBgImageOnAlpha":false,"disableBgImage":false},
    },{
      plugin: require('../node_modules/gatsby-plugin-manifest/gatsby-browser.js'),
      options: {"plugins":[],"name":"Neotoma Workshops","short_name":"Neotoma Workshops","start_url":"/","background_color":"#ec625D","theme_color":"#ec625D","display":"minimal-ui","icon":"static/icon.png","legacy":true,"theme_color_in_head":true,"cache_busting_mode":"query","crossOrigin":"anonymous","include_favicon":true,"cacheDigest":"8877977ea100d9cfcf70093535c99e3f"},
    },{
      plugin: require('../node_modules/gatsby-plugin-offline/gatsby-browser.js'),
      options: {"plugins":[]},
    },{
      plugin: require('../gatsby-browser.js'),
      options: {"plugins":[]},
    }]
