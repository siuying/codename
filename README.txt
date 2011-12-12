= codename

home :: https://github.com/siuying/codename

== DESCRIPTION:

Codename gem randomly generate codename based on list of names.

Supported names:

* stars          -  Western constellation names
* elements       -  Elements names
* colors         -  Color names
* cyclones       -  Names of tropical cyclones
* random         -  Random numbers (00000 - 99999)

== SYNOPSIS:

  You may generate names by "generate" command

  % codename generate list_name [more_list_name_]...
  
  example:
  
  % codename generate stars cyclones
  orion-sanvu
  aquarius-kujira
  reticulum-washi
  vulpecula-nari
  draco-meari
  lacerta-toraji
  antlia-sepat
  equuleus-meranti
  crater-lekima
  circinus-mindulle
  
  You may find list of supported source by "help" commands:

  % codename help
  Usage: codename generate list_name [more_list_name]...
  Usage: codename help
  list names: 
  	adjs           -  Common adjectives
  	stars          -  Western constellation names
  	elements       -  Elements names
  	colors         -  Colour names
  	cyclones       -  Tropical cyclone names
  	random         -  Random numbers (00000 - 99999)

== REQUIREMENTS:

* nokogiri

== INSTALL:

* sudo gem install codename

== LICENSE:

(The MIT License)

Copyright (c) 2011 Francis Chong

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
