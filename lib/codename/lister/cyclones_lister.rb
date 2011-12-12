require 'rubygems'
require 'nokogiri'
require 'open-uri'

module Codename::Lister
  class CyclonesLister < BaseLister
    URL = "http://www.jma.go.jp/jma/jma-eng/jma-center/rsmc-hp-pub-eg/tyname.html"

    def list
      doc = Nokogiri::HTML(open(URL))
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
      "Names of tropical cyclones"
    end

    Factory.instance.register(CyclonesLister)
  end
end
