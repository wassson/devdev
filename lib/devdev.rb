# frozen_string_literal: true

module DevDev
  class << self
    # build all commands
    def build_all
      i = 0
      commands = cmd_array
      commands.each do |cmd|
        puts blue <<~TEXT
          #{i += 1}. #{cmd[:title]}
        TEXT

        puts "    #{cmd[:cmd]}\n\n"
      end
    end

    # view next command
    def next; end

    # skip command
    def skip; end

    # view command documentation
    def info; end

    private

    # this will be built from a config created by the user
    def cmd_array
      @cmd_array ||= [
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

    def blue(string)
      "\u001b[38;5;39;1m#{string}\033[0m"
    end
  end
end
