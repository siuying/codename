module Codename::Lister
  # Return random number 00001 - 99999
  class RandomLister < BaseLister
    def list
      (0..99999).to_a.collect{|a| ["%05d" % a]}
    end
    
    def name
      "random"
    end
    
    def description
      "Random numbers (00000 - 99999)"
    end

    Factory.instance.register(RandomLister)
  end
end
