# Razoul [WIP]

![alt tag](http://img2.wikia.nocookie.net/__cb20130802163851/disney/images/thumb/5/5c/Razoul_KHX.png/274px-Razoul_KHX.png)


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
