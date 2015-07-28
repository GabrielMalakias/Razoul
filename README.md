# razoul
Gem for generate token to Auth

# Installation
To use this gem add this line in your Gemfile
```ruby
gem 'razoul'
```
# Configuration
In Rails applications create a razoul.rb in config/initializers
```ruby
Razoul.configure do |config|
   config.persistence = 'redis'
   config.redis_password  = '1234'
   config.token_key = 'Razoul_Auth'
   config.prefix_token = 'RAZOUL'
end

```

In controller you need add the code below

```ruby
controller TestController < Razoul::Controller
before_action :authenticate, :only [:<controller api action>]
```
