# frozen_string_literal: true

require_relative 'devdev/cli/helpers'

module DevDev
  class << self
    def all
      i = 0
      commands = cmd_array
      commands.each do |cmd|
        # I don't love this, but we can fix it in another PR
        puts DevDev::CLI::Helpers.blue <<~TEXT
          #{i += 1}. #{cmd[:cmd]}
        TEXT
      end
    end

    private

    # this will be built from the initialized Devfile
    def cmd_array
      @cmd_array ||= [
        {
          title: 'Clone DevDev',
          cmd: 'git clone ...'
        },
        {
          title: 'Install Gems',
          cmd: 'bundle',
          desc: 'Install all gems listed in the Gemfile. This will create a Gemfile.lock.',
          path: false
        },
        {
          title: 'Create Database',
          cmd: 'bundle exec rails db:create',
          desc: 'This command creates two PostgresQL databases: app_name_test & app_name_development.',
          notes: 'Before this command runs successfully, you will need to set up your user and password.',
          path: true
        }
      ]
    end
  end
end
