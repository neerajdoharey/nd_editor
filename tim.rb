%w[../lib].each { |dir| $LOAD_PATH << File.expand_path(dir, __FILE__) }

require 'io/console'
require 'buffer'
require 'render'
require 'editor'


editor = Editor.new(ARGV[0])
editor.run
