require 'singleton'

module Codename::Lister
  class BaseLister
    include Singleton

    # Public: list names
    # 
    # Returns array of names
    def list
      raise "Implement me in subclass"
    end
    
    # Public: Get an random item from the lister
    #
    # Returns random item from the list
    def random
      @__list ||= list
      @__list[rand(@__list.size)]
    end
    
    # Public: Get the size of the list contains
    #
    # Returns size of the list      
    def size
      @__list ||= list
      @__list.size
    end
    
    def name
      "base"
    end
    
    def description
      "description of the lister"
    end
  end
end