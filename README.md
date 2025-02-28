# Jekyll Theme MNC

*MNC is a one-size-fits-all Jekyll theme for writers, and is based on [minima](https://github.com/jekyll/minima), but uses a classless approach and adds an optional tumblelog*.

**Disclaimer:** The information here may vary depending on the version you're using. Please refer to the `README.md` bundled within the theme-gem for information specific to your version or by pointing your browser to the Git tag corresponding to your version. e.g. `https://github.com/michaelnordmeyer/jekyll-theme-mnc/blob/v1.0.0/README.md`. Running `bundle show jekyll-theme-mnc` will provide you with the local path to your current theme version.

[Theme demo](https://jekyll-theme-mnc.michaelnordmeyer.com)

![MNC Screenshot](/screenshot.png)

**Note:** Paging is not supported, which means all posts are displayed on the home page.

## Installation

Installation from Gem is recommended, but using a remote theme is also possible, even though it will increase build times a little, depending on your internet connection and the size of the theme download, because it will be downloaded during each build. Gems are installed locally.

GitHub Pages gem users need to use the remote theme method.

### Installation from Gem

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-mnc", group: [:jekyll_plugins]
```

Then run `bundle` in your terminal.

```sh
bundle
```

Also add the theme to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-mnc
```

Make sure that this is the only `theme:` in `_config.yml`, and that there are no other `remote-theme:`.

### Installation as Remote Theme

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-remote-theme", group: [:jekyll_plugins]
```

Then run `bundle` in your terminal.

```sh
bundle
```

Finally add the remote theme to your Jekyll site's `_config.yml`:

```yaml
remote_theme: michaelnordmeyer/jekyll-theme-mnc
```

Make sure that this is the only `remote_theme:` in `_config.yml`, and that there are no other `theme:`.

## Contents At-A-Glance

### Layouts

Refers to files within the `_layouts` directory, that define the markup for your theme.

  - `default.html` – The base layout that lays the foundation for subsequent layouts. The derived layouts inject their contents into this file at the line that says ` {{ content }} ` and are linked to this file via [FrontMatter](https://jekyllrb.com/docs/frontmatter/) declaration `layout: default`.
  - `home.html` – The layout for your landing-page / home-page / index-page. [[More Info.](#home-layout)]
  - `page.html` – The layout for your documents that contain FrontMatter, but are not posts.
  - `post.html` – The layout for your posts.
  - `redirect.html` – The layout which will be used by the optional plugin [Jekyll Redirect From](https://github.com/jekyll/jekyll-redirect-from)


#### Home Layout

`home.html` is a flexible HTML layout for the site's landing-page / home-page / index-page.

##### Main Heading and Content Injection

The *home* layout will inject all content from your `index.md` / `index.html` *before* the `Posts` heading. This will allow you to include non-posts related content to be published on the landing page under a dedicated heading. *We recommended that you title this section with a Heading2 (`##`)*.

Usually the `site.title` itself would suffice as the implicit 'main-title' for a landing-page. But, if your landing-page would like a heading to be explicitly displayed, then simply define a `title` variable in the document's front matter and it will be rendered with an `<h1>` tag.

##### Post Listing

It will be automatically included only when your site contains one or more valid posts or drafts (if the site is configured to `show_drafts`).

The title for this section is `Posts` by default and rendered with an `<h3>` tag. You can customize this heading by redefining the `list_title` variable in the document's front matter.

### Includes

Refers to snippets of code within the `_includes` directory that can be inserted in multiple layouts (and another include-file as well) within the same theme-gem.

  - `analytics.html` – Inserts analytics module (active only in production environment).
  - `custom-head.html` – Placeholder to allow users to add more metadata to `<head />`.
  - `footer.html` – Defines the site's footer section.
  - `head.html` – Code-block that defines the `<head></head>` in *default* layout.
  - `header.html` – Defines the site's main header section. By default, pages with a defined `title` attribute will have links displayed here.
  - `search-duckduckgo.html` – Renders DuckDuckGo custom search.
  - `social.html` – Renders social-media icons based on the `jekyll-theme-mnc.social_links` data in the config file.

### Sass

Refers to `.scss` files within the `_sass` directory that define the theme's styles.

  - `jekyll-theme-mnc/skins/classic.scss` – The "classic" skin of the theme. *Used by default.*
  - `jekyll-theme-mnc/initialize.scss` – A component that defines the theme's *skin-agnostic* variable defaults and sass partials.
    It imports the following components (in the following order):
    - `jekyll-theme-mnc/custom-variables.scss` – A hook that allows overriding variable defaults and mixins. (*Note: Cannot override styles*)
    - `jekyll-theme-mnc/_base.scss` – Sass partial for resets and defines base styles for various HTML elements.
    - `jekyll-theme-mnc/_layout.scss` – Sass partial that defines the visual style for various layouts.
    - `jekyll-theme-mnc/custom-styles.scss` – A hook that allows overriding styles defined above. (*Note: Cannot override variables*)

Refer the [skins](#skins) section for more details.

### Assets

Refers to various asset files within the `assets` directory.

  - `assets/css/style.scss` – Imports sass files from within the `_sass` directory and gets processed into the theme's
    stylesheet: `assets/css/styles.css`.
  - `assets/jekyll-theme-jekyll-theme-mnc-social-icons.svg` – A composite SVG file comprised of *symbols* related to various social-media icons.
    This file is used as-is without any processing. Refer [section on social networks](#social-networks) for its usage.

### Plugins

MNC comes with [`jekyll-seo-tag`](https://github.com/jekyll/jekyll-seo-tag) plugin preinstalled to make sure your website gets the most useful meta tags. See [usage](https://github.com/jekyll/jekyll-seo-tag#usage) to know how to set it up.

## Usage

Have the following line in your config file:

```yaml
theme: jekyll-theme-mnc
```

### Customizing templates

To override the default structure and style of MNC, simply create the concerned directory at the root of your site, copy the file you wish to customize to that directory, and then edit the file.

e.g., to override the [`_includes/head.html `](_includes/head.html) file to specify a custom style path, create an `_includes` directory, copy `_includes/head.html` from MNC gem folder to `<yoursite>/_includes` and start editing that file.

The site's default CSS has now moved to a new place within the gem itself, [`assets/css/style.scss`](assets/css/style.scss).

If you only need to customize the colors of the theme, refer to the subsequent section on skins. To have your *CSS overrides* in sync with upstream changes released in future versions, you can collect all your overrides for the Sass variables and mixins inside a sass file placed at `_sass/jekyll-theme-mnc/custom-variables.scss` and all other overrides inside a sass file placed at path `_sass/jekyll-theme-mnc/custom-styles.scss`.

You need not maintain entire partial(s) at the site's source just to override a few styles. However, your stylesheet's primary source (`assets/css/style.scss`) should contain the following:

  - Front matter dashes at the very beginning (can be empty).
  - Directive to import a skin.
  - Directive to import the base styles (automatically loads overrides when available).

Therefore, your `assets/css/style.scss` should contain the following at minimum:

```sass
---
---

@import
  "jekyll-theme-mnc/skins/{{ site.jekyll-theme-mnc.skin | default: 'classic' }}",
  "jekyll-theme-mnc/initialize";
```

#### Skins

MNC supports defining and switching between multiple color-palettes (or *skins*).

```
.
├── jekyll-theme-mnc.scss
└── jekyll-theme-mnc
    └── _syntax-highlighting.scss
```

A skin is a Sass file placed in the directory `_sass/jekyll-theme-mnc/skins` and it defines the variable defaults related to the "color" aspect of the theme. It also embeds the Sass rules related to syntax-highlighting since that is primarily related to color and has to be adjusted in harmony with the current skin.

The default color palette for MNC is defined within `_sass/jekyll-theme-mnc/skins/classic.scss`. To switch to another available skin, simply declare it in the site's config file. For example, to activate `_sass/jekyll-theme-mnc/skins/dark.scss` as the skin, the setting would be:

```yaml
jekyll-theme-mnc:
  skin: dark
```

##### Available skins

Skin setting    | Description
--------------- | -----------
classic         | Default, light color scheme.
dark            | Dark variant of the classic skin.
auto            | *Adaptive skin* based on the default classic and dark skins.
solarized       | *Adaptive skin* for [solarized](https://github.com/solarized) color scheme skins.
solarized-light | Light variant of solarized color scheme.
solarized-dark  | Dark variant of solarized color scheme.

*:bulb: Adaptive skins switch between the "light" and "dark" variants based on the user's operating system setting or browser setting (via CSS Media Query [prefers-color-scheme](https://developer.mozilla.org/en-US/docs/Web/CSS/@media/prefers-color-scheme)).*

### Category support

First, add one or many categories to the post's frontmatter:

```yaml
categories: [First, Second, "My Third"]
```

#### Category navigation links

For categories to be properly linked, the site needs a `category` folder having separate markdown files for each category. E.g. for the category "first" a file called `first.md` in `category` with the following content:

```yaml
---
title: "First"
excerpt: A description for the head's meta description tag created by jekyll-seo-tag
permalink: /category/first
sitemap: false
layout: category
---
```

The title and permalink have to match the corresponding filename and category name. The category slug `category` in e.g. `https://example.com/category/first` is user-configurable in `_config.yaml`:

```yaml
jekyll-theme-mnc:
  category_slug: category
```

Used categories will be included automatically in the navigation menu after ordinary pages, which are declared with `header_pages` (see below). Spaces will be automatically converted to hyphens, so the above permalink has to mirror this.

### Customize navigation links

This allows you to set which pages you want to appear in the navigation area and configure order of the links.

For instance, to only link to the `about` and the `portfolio` page, add the following to your `_config.yml`:

```yaml
jekyll-theme-mnc:
  header_pages:
    - about.md
    - portfolio.md
```

### Change default date format

You can change the default date format by specifying `site.jekyll-theme-mnc.date_format`
in `_config.yml`.

```yaml
# Refer to https://shopify.github.io/liquid/filters/date/ if you want to customize this
jekyll-theme-mnc:
  date_format: "%Y-%m-%d"
```

### Favicon Support for Feeds

You can declare an icon for the tumblelog in `_config.yml`.

```yaml
tumblelog_icon: /assets/icons/icon.webp
```

### Header Image Support

A header image is displayed before the title on posts and pages, if `image` is added to the file's frontmatter.

```yaml
---
image: /images/sample-image.webp
image_alt: The description of the image
image_title: The title of the image
---
```

This image is also used in feeds and SEO tags as the displayed image.

### Extending the `<head />`

You can *add* custom metadata to the `<head />` of your layouts by creating a file `_includes/custom-head.html` in your source directory. For example, to add favicons:

1. Head over to [https://realfavicongenerator.net/](https://realfavicongenerator.net/) to add your own favicons.
2. [Customize](#customization) default `_includes/custom-head.html` in your source directory and insert the given code snippet.

### Author Metadata

`site.author` is expected to be a mapping of attributes:

```yaml
author:
  name: John Smith
  email: "john.smith@example.com"
```

### Social networks

You can add links to the accounts you have on other sites, with respective icon, by adding one or more of the following options in your config. The usernames are to be nested under `jekyll-theme-mnc.social_links`, with the keys being simply the social-network's name:

```yaml
jekyll-theme-mnc:
  social_links:
    twitter: jekyllrb
    github: jekyll
    stackoverflow: "11111"
    dribbble: jekyll
    facebook: jekyll
    flickr: jekyll
    instagram: jekyll
    linkedin: jekyll
    xing: jekyll
    pinterest: jekyll
    telegram: jekyll
    microdotblog: jekyll
    keybase: jekyll

    mastodon:
     - username: jekyll
       instance: example.com
     - username: jekyll2
       instance: example.com

    gitlab:
     - username: jekyll
       instance: example.com
     - username: jekyll2
       instance: example.com

    youtube: jekyll
    youtube_channel: UC8CXR0-3I70i1tfPg1PAE1g
    youtube_channel_name: CloudCannon
```

### Enabling Analytics

To enable analytics, you will need a third-party analytics account. Follow their instructions of how to get their code snippet, which has to be added to your site. Copy this snippet and paste it into `analytics.html` in folder `_includes`.

To enable this in MNC, add the following lines to your Jekyll site to turn analytics processing on:

```yaml
jekyll-theme-mnc:
  analytics: true
```

Analytics will only appear in production, i.e., not while testing the site on your local device.

### Enabling Excerpts on the Home Page

To display post excerpts on the home page, simply add the following to your `_config.yml`:

```yaml
show_excerpts: true
```

### Reading Time

The reading time is calculated and display at the beginning of each post. To adjust the reading speed, simply add the following to your `_config.yml` and choose a number for words per minute:

```yaml
reading-speed: 180
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/michaelnordmeyer/jekyll-theme-mnc. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](https://www.contributor-covenant.org/) code of conduct.

## Development

To set up your environment to develop this theme, run `script/bootstrap`.

To test your theme, run `script/server` (or `bundle exec jekyll serve`) and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme and the contents. As you make modifications, your site will regenerate and you should see the changes in the browser after a refresh.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
