# frozen_string_literal: true

module DevDev
  class << self
    # view all commands
    def all
      cmd_hash
    end

    # view next command
    def next; end

    # skip command
    def skip; end

    # view command documentation
    def info; end

    private

    # this will be built from a config created by the user
    def cmd_hash
      @cmd_hash ||= { 'brew install node': false, 'yarn install': false, 'rails db:create': false }
    end
  end
end
