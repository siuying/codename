path = File.expand_path(File.dirname(__FILE__))
$:.unshift(path) unless $:.include?(path)

require 'codename/generator'
require 'codename/lister'

class Codename
  VERSION = '1.1.0'
end
