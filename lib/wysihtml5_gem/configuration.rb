module Wysihtml5Gem
  class Configuration

    # The templates folder 
    attr_accessor :template_folder

    # Configuration defaults
    def initialize
      @template_folder = :wysihtml5_gem
    end
    
  end
end