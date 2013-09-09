## SEO Pages

Provides an easy way to manage your pages title, meta description and meta keywords.
You can set default values to be used if the SEO is not set for a page.


### Installation

Update your Gemfile

```ruby
gem 'seo_pages'  
```

run bundle install

After installation

```ruby
rake seo_pages:install:migrations
rake db:migrate
```

You will need to provide a before_action require_admin in an initializer
create a file seo_initializer.rb in config/initializers directory

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

Go to /seo, you can edit the Default values for title, meta description and meta keywords.
You can add a new SEO page, by providing the url identifier and the related title, meta description and meta keywords.

You can easily override the SEO page functionality in the view
```ruby
%head
    %title= content_for?(:title) ? yield(:title) : seo_data.page_title
    %meta{:content => content_for?(:meta_description) ? yield(:description) : "#{seo_data.meta_description}", :name => "description"}
    %meta{:content => content_for?(:meta_keywords) ? yield(:description) : "#{seo_data.meta_keywords}", :name => "keywords"}
 
``` 

Then you can visit