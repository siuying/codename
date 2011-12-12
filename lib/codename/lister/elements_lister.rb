require 'rubygems'
require 'nokogiri'
require 'open-uri'

module Codename::Lister
  class ElementsLister < BaseLister
    URL = "http://en.wikipedia.org/wiki/List_of_elements"

    def list
      doc = Nokogiri::HTML(open(URL))
      doc.css("table.wikitable tr > td[3] > a[1]").collect { |node| node.text }
    end
    
    def name
      "elements"
    end
    
    def description
      "Elements names"
    end

    Factory.instance.register(ElementsLister)
  end
end
