## HEAD

### Documentation


### Minor Enhancements


### Major Enhancements


### Bug Fixes


### Development Fixes


## 1.0.0 / 2022-11-09

  * Used Jekyll's base theme [minima](https://github.com/jekyll/minima) [head](https://github.com/jekyll/minima/commit/41b97699af658128fa9983e5312ca5516641f335)
  * Removed all CSS classes and styled using HTML elements only, except
    * `.footnotes` to style footnotes, which are automatically created by kramdown if present in markdown
  * Removed Google Analytics for privacy reasons and replaced it with vanilla snippet pasting for privacy-friendlier solutions
  * Removed Dicscuss for privacy reasons
  * Removed paging (might come back for people with thousands of posts)
  * Removed Google Scholar profile link
  * Added XING profile link
  * Removed microdata, because JSON-LD and RDFa should be enough, and also doesn't plays well with the classless approach
  * Cleaned up some minor documentation mistakes
  * Added category support with automatic menu linking and manual category page
  * Switched to always display hamburger button to accomodate potentially many categories, which couldn't be displayed in a single header line, especially on mobile
  * Replaced hidden toggle switch for hamburger button with HTML 5 `display` element and dropped IE 11 support because of this
  * Added old-fashioned favicon support
  * Added optional header image before post title
  * Added reading time to post header
  * Added JSON feed in addition to jekyll-seo-tag's atom feed
  * Removed single RSS link in footer, links are now after post to reasonably expose JSON feeds
  * Removed columns in footer to optimizate for mobile usage
  * Added bio to footer to cater for single-author blogging
  * Moved social icons after footer headline, which now is the linked site title
  * Added DuckDuckGo custom search to footer
  * Removed many small inconsistencies in HTML and CSS
