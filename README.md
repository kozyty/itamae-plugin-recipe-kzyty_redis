# Itamae::Plugin::Recipe::KzytyRedis

[Itamae](https://github.com/itamae-kitchen/itamae) plugin to install redis.

## Forked for temporarily gem

https://github.com/leonis/itamae-plugin-recipe-redis/issues/1

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-kzyty_redis'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-kzyty_redis

## Usage

### Recipe

#### package recipe

Install redis package.

```
# your recipe
include_recipe 'kzyty_redis::package'
```

#### config recipe

Configure redis.

```
# your recipe
include_recipe 'kzyty_redis::package'
include_recipe 'kzyty_redis::config'
```

NOTE: `config` recipe depend on `package` recipe.

##### Node

```
kzyty_redis:
  port: 6379
```

| name | description |
|:-----|:------------|
| kzyty_redis.port | port number of redis |

#### enable recipe

Enable redis service.

```
# your recipe
include_recipe 'kzyty_redis::package'
include_recipe 'kzyty_redis::enable'
```

NOTE: `enable` recipe depend on `package` recipe.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/itamae-plugin-recipe-kzyty_redis/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

# License

MIT License
