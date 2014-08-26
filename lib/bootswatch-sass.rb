module Bootswatch
  class << self
    # Inspired by Bootstrap Sass
    def load!
      register_rails_engine if rails?
      configure_sass
    end

    # Paths
    def gem_path
      @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
    end

    def stylesheets_path
      File.join assets_path, 'stylesheets'
    end

    def fonts_path
      File.join assets_path, 'fonts'
    end

    def javascripts_path
      File.join assets_path, 'javascripts'
    end

    def assets_path
      @assets_path ||= File.join gem_path, 'vendor', 'assets'
    end

    # Environment detection helpers
    def asset_pipeline?
      defined?(::Sprockets)
    end

    def compass?
      defined?(::Compass)
    end

    def rails?
      defined?(::Rails)
    end

    private

    def configure_sass
      require 'sass'

      ::Sass.load_paths << stylesheets_path
    end

    def register_rails_engine
      require 'bootswatch-sass/engine'
    end
  end
end

Bootswatch.load!

