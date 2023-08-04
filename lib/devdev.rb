module DevDev
  class << self
    def all
      cmd_hash
    end
    def next; end

    private

    def cmd_hash
      @commands ||= { "brew install node": false, "yarn install": false, "rails db:create": false }
    end
  end
end