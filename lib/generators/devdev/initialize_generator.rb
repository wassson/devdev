# frozen_string_literal: true

require 'rails/generators/base'

module DevDev
  class InitializeGenerator < Rails::Generators::Base
    source_root(__dir__)

    desc 'Creates a DevDev initializer for your application.'

    def create_devdev_file
      create_file 'config/initializers/devdev.rb', <<~RUBY
        ### DEVDEV INITIALIZER ###
      RUBY
    end
  end
end
