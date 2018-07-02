class Buffer
  attr_reader :lines

  def initialize
    @lines = lines
  end

  #def insert_char(char, row, col)
    #with_copy {|b| b.lines[row].insert(col, char) }
  #end

  #private

  #def with_copy
    #Buffer.new(lines.map(&:dup)).tap {|b| yield b }    
  #end
end
