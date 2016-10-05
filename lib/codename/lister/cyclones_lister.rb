require 'rubygems'
require 'nokogiri'
require 'open_uri_redirections'

module Codename::Lister
  class CyclonesLister < BaseLister
    URL = "http://www.jma.go.jp/jma/jma-eng/jma-center/rsmc-hp-pub-eg/tyname.html"

    def list
      doc = Nokogiri::HTML(open(URL, :allow_redirections => :safe))
      doc.xpath("/html/body/table[3]/tr").collect do |rows|
        columns = rows.css("td")
        columns.shift
        columns.collect {|c| c.text }
      end.flatten.select {|name| name !=~ /column/}
    end
    
    def name
      "cyclones"
    end
    
    def description
      "Tropical cyclone names"
    end

    Factory.instance.register(CyclonesLister)
  end
end
