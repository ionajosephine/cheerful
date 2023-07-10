# Cheerful

Cheerful gem allows you to customize the color of syntax errors in the terminal logs of a Rails application, adding some fun and cheer to the development process!

## Installation

Cheerful has not yet been released to RubyGems.org because it is still under development and needs further testing. However, if you want to play with it you can do so by downloading and installing it locally: 

1. Add `gem 'cheerful', github: 'https://github.com/ionajosephine/cheerful', branch 'main'` to your Rail's app's gemfile.
2. Run bundle config command in your terminal:
       `$ cd /path/to/rails/app
        $ bundle config --local local.cheerful /full/path/to/local/cheerful/gem`
3. Confirm the bundle config with `$ bundle config`
4. Run the `bundle install` command in your terminal
5. You will notice that in the output of the bundle you'll see the source of the gem rather than just the gem name. Something similar to:
       `Using cheerful-0.1.0 from https://github.com/ionajosephine/cheerful.git (at /full/path/to/local/cheerful/gem@git-hash)`
6. You can now modify the gem in your local directory and the changes will also be reflected in your Rails app.

## Usage

As it is still in development the gem is not reliable in all apps or with all terminal programs however the expected behaviour is that when you have a syntax error show in your terminal logs during development it will be shown in magenta rather than the standard grey. This helps you to see quickly and clearly what type of error it is rather than straining your eyes to find the useful bit!

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ionajosephine/cheerful.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
