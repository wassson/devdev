# frozen_string_literal: true

require 'thor'
require_relative '../../devdev'
require_relative '../initializer'
require_relative 'helpers'

module DevDev
  module CLI
    class Interface < Thor
      package_name 'DevDev'
      map '-a' => :all

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
