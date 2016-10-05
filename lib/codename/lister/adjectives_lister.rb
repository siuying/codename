require 'rubygems'
require 'nokogiri'
require 'open_uri_redirections'

module Codename::Lister
  class AdjectivesLister < BaseLister
    URL = "http://www.esldesk.com/content/voc/adjectives.js"

    def list
      doc = open(URL, :allow_redirections => :safe).read
      doc.split("\n").collect {|line| line.match(/\"(.+);\"/)[1] rescue nil }.compact
    end
    
    def name
      "adjs"
    end
    
    def description
      "Common adjectives"
    end

    Factory.instance.register(AdjectivesLister)
  end
end
