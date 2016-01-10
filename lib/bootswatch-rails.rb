require 'bootswatch-rails/version'

module Bootswatch
  module Rails
    class Engine < ::Rails::Engine

      initializer 'bootswatch-rails.assets.append_paths' do |app|
        ::Sass.load_paths << stylesheets_path if sass?
      end

      def stylesheets_path
        root.join('vendor', 'assets', 'stylesheets').to_s
      end

      def sass?
        defined?(::Sass)
      end

    end
  end
end
