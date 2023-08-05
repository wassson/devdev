# frozen_string_literal: true

require 'thor'
require_relative '../../devdev'
require_relative '../initializer'
require_relative 'helpers'

module DevDev
  module CLI
    # This is the CLI interface that the user interacts with.
    # Each command that the user can call is mapped here.
    class Interface < Thor
      def self.exit_on_failure?
        true
      end

      desc 'init', 'Initialize a Devfile'
      def init
        ::DevDev::Initializer.create
      end

      desc 'all', 'Print the output of `all`'
      def all
        DevDev.all
      end
    end
  end
end
