## SEO Pages

Provides an easy way to manage your pages title, meta description and meta keywords.
You can set default values to be used if the SEO is not set for a page.


### Installation

Update your Gemfile

```ruby
gem 'seo_pages'  
```

Then run bundle install 

```ruby
bundle install
```

After installation

```ruby
rake seo_pages:install:migrations
rake db:migrate
```

You will need to provide a before_action require_admin in an initializer.

Create a file seo_initializer.rb in config/initializers directory

```ruby
module SeoPages
  class ApplicationController < ActionController::Base

    def require_seo_admin
        redirect_to(root_path) unless current_user.admin?
    end
    
  end
end  
```

Mount the engine in your routes.rb

```ruby
mount SeoPages::Engine => "/seo"
```

In you browser visit the url "/seo", you can edit the Default values for title, meta description and meta keywords.
You can add a new SEO page, by providing the url identifier and the related title, meta description and meta keywords.

```ruby
%html
  %head
    = seo_page
``` 

You can easily override the SEO page functionality in application.html.haml.
In the view you want to add custom SEO.
```ruby
- seo_page_title("My Cool Engine")
- seo_page_meta_description("My cool description")
- seo_page_meta_keywrods("keywords keywords keywords keywords keywords keywords keywords keywords")

```

