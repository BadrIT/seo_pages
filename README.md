## Seo Pages

Add Seo to your pages


### Installation

Update your Gemfile

```ruby
gem 'seo'  
```
run bundle install

After installation

```ruby
rake seo:install:migrations
rake db:migrate
```

You will need to provide a before_action require_admin in an initializer
create a file seo_initializer.rb in initializer directory

```ruby
module Seo
  class ApplicationController < ActionController::Base

    def require_admin
        redirect_to(root_path) unless current_user.admin?
    end
    
  end
end  
```

