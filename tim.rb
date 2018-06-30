%w[../lib].each { |dir| $LOAD_PATH << File.expand_path(dir, __FILE__) }

require 'io/console'
require 'buffer'
require 'render'
require 'editor'

if ARGV[0]
  editor = Editor.new(ARGV[0])
  editor.run
else
  puts "No file name in arguments"
end
