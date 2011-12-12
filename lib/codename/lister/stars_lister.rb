require 'rubygems'
require 'nokogiri'
require 'open-uri'

module Codename::Lister
  class StarsLister < BaseLister
    URL = "http://en.wikipedia.org/wiki/List_of_constellations"

    def list
      doc = Nokogiri::HTML(open(URL))
      doc.css("table.wikitable tr > td[1] > a[1]").collect { |node| node.text }
    end
    
    def name
      "stars"
    end
    
    def description
      "Western constellation names"
    end

    Factory.instance.register(StarsLister)
  end
end
