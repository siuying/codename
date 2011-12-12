require 'singleton'

module Codename::Lister
  class Factory
    include Singleton
    attr_reader :listers

    def initialize
      @listers = []
    end

    # Public: Register a lister
    #
    # clazz - a lister class to be register
    # 
    # Returns self
    def register(clazz)
      @listers << clazz.instance
      self
    end
    
    # Public: Find lister by name
    #
    # name - string, name of the lister
    #
    # Returns lister class
    def lister(name)
      lister_class = @listers.find do |lister|
        lister.name == name
      end
      
      if lister_class
        lister_class
      else
        raise "Cannot find lister '#{name}'"
      end
    end
    
    
    # Public: get information of supported name lists
    #
    # Returns array of array contains name and description of lists
    def info
      @listers.collect {|l| [l.name, l.description] }
    end
  end
end
