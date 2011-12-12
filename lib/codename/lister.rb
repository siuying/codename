path = File.expand_path(File.dirname(__FILE__))
$:.unshift(path) unless $:.include?(path)

require 'lister/factory'
require 'lister/base_lister'
require 'lister/stars_lister'
require 'lister/elements_lister'
require 'lister/colors_lister'
require 'lister/cyclones_lister'
require 'lister/random_lister'