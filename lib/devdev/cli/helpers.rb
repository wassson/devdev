# frozen_string_literal: true

module DevDev
  module CLI
    # This class contains methods to 'prettifiy' the CLI
    # Theoretically we could just monkey-patch String and add these so we could do
    # `puts 'My message'.red``
    # and it would work the same way
    class Helpers
      class << self
        def red(message)
          colorize(31, message)
        end

        def green(message)
          colorize(32, message)
        end

        def yellow(message)
          colorize(33, message)
        end

        def blue(message)
          colorize(34, message)
        end

        def pink(message)
          colorize(35, message)
        end

        def light_blue(message)
          colorize(36, message)
        end

        private

        def colorize(color_code, message)
          "\e[#{color_code}m#{message}\e[0m"
        end
      end
    end
  end
end
