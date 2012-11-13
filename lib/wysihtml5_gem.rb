require 'wysihtml5_gem/engine'
require 'wysihtml5_gem/configuration'

module Wysihtml5Gem
  class << self

    def configure
      yield configuration
    end

    def configuration
      @configuration ||= Configuration.new
    end
    alias :config :configuration

  end
end