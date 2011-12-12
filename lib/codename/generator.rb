class Codename
  class Generator
    attr_reader :listers

    def initialize(*names)
      @listers = []
      names.each do |name|
        @listers << ::Codename::Lister::Factory.instance.lister(name)
      end
    end
    
    def generate
      @listers.collect do |lister|
        lister.random
      end.join(" ").downcase.gsub(" ", "-")
    end
  end
end