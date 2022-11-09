# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name     = "jekyll-theme-mnc"
  spec.version  = "1.0.0"
  spec.authors  = ["Michael Nordmeyer"]
  spec.email    = ["michaelnordmeyer@users.noreply.github.com"]

  spec.summary  = "A classless, minimal theme for Jekyll based on minima."
  spec.homepage = "https://github.com/michaelnordmeyer/jekyll-theme-mnc"
  spec.license  = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end

  spec.add_runtime_dependency "jekyll", ">= 3.9", "< 5.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.16"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8.0"

  spec.add_development_dependency "bundler"
end
