# Razoul
Gem for generate token to Auth

# Installation
To use this gem add this line in your Gemfile
```ruby
gem 'razoul'
```
# Configuration
In Rails applications create a razoul.rb in config/initializers
```ruby
require 'razoul'
Razoul.configure do |config|
   config.login = 'razoul'
   config.password = '123456'
   config.persistence = 'redis'
   config.redis_password  = '1234'
   config.token_key = 'RAZOUL_AUTH_KEY'
   config.prefix_token = 'RAZOUL'
end

```

# Usage

Razoul need one controller to generate and get current token, to do tthis you need create a controller and extend this of Razoul::GeneratorController

```ruby
class YourController < Razoul::GeneratorController

```

This controller have two routes
```ruby
resource :yourcontroller do
get :new, :show
end
```

To get new token and get current, pass prefix_token(RAZOUL) + login and password in header of request

In controller you need some authentication you need add a before_action :authenticate

```ruby
class ResourceController < Razoul::Controller
before_action :authenticate, :only [:<controller api action>]
```

And to use this resource, pass token in token_key(RAZOUL_AUTH_KEY) in header

