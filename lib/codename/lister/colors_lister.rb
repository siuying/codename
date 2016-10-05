require 'rubygems'
require 'nokogiri'
require 'open_uri_redirections'

module Codename::Lister
  class ColorsLister < BaseLister
    URL = "http://www.colordic.org/y/"

    def list
      doc = Nokogiri::HTML(open(URL, :allow_redirections => :safe))
      doc.css("table.colortable td a span").collect { |node| node.text }
    end
    
    def name
      "colors"
    end
    
    def description
      "Color names"
    end

    Factory.instance.register(ColorsLister)
  end
end
