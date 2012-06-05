# bootswatch-rails

This gem is meant to be used with [bootstrap-sass](https://github.com/thomas-mcdonald/bootstrap-sass). It gives you complete scss versions of [bootswatches](http://bootswatch.com) for use in your Rails 3 asset pipeline, just like bootstrap-sass gives you scss version of bootstrap itself.

## Installation

Add this line to your application's Gemfile, in assets group:

    gem 'bootswatch-rails'

And then execute:

    $ bundle

## Usage

When using bootstrap-sass, it's recommended to avoid sprockets in your stylesheets. In order to do that you simply rename your `application.css` file to `application.css.scss`, remove all sprockets comments, and instead use sass `@import` commands. These commands are smart enough to fully support asset pipeline load paths, thanks to `sass-rails` gem.

Here's approximately how your `application.css.scss` file should look like, considering that you're using [bootstrap-sass](https://github.com/thomas-mcdonald/bootstrap-sass).

    // Example using 'Cerulean' bootswatch
    //
    // First import journal variables
    @import "bootswatch/cerulean/variables";

    // Then bootstrap itself
    @import "bootstrap";

    // Bootstrap body padding for fixed navbar
    body { padding-top: 60px; }

    // Responsive styles go here in case you want them
    @import "bootstrap-responsive";

    // And finally bootswatch style itself
    @import "bootswatch/cerulean/bootswatch";

    // Whatever application styles you have go last
    @import "base";

## Bootswatches

I'm converting/updating them as time permits. Here's what's included at this point.

* [Amelia](http://bootswatch.com/amelia/)
* [Cerulean](http://bootswatch.com/cerulean/)
* [Cyborg](http://bootswatch.com/cyborg/)
* [Journal](http://bootswatch.com/journal/)
* [Readable](http://bootswatch.com/readable/)
* [Simplex](http://bootswatch.com/simplex/)
* [Slate](http://bootswatch.com/slate/)
* [Spacelab](http://bootswatch.com/spacelab/)
* [Spruce](http://bootswatch.com/spruce/)
* [Superhero](http://bootswatch.com/superhero/)
* [United](http://bootswatch.com/united/)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credits

Big thanks to these guys.

[Thomas Park](http://github.com/thomaspark) for [bootswatch](http://bootswatch.com/)

[Thomas McDonald](http://github.com/thomas-mcdonald) for [bootstrap-sass](https://github.com/thomas-mcdonald/bootstrap-sass)
