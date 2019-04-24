require "shutils/engine"
require "shutils/configuration"

module Shutils
  class << self
    attr_reader :config

    def configure
      @config = Configuration.new
      yield config
    end
  end
end
