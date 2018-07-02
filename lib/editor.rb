class Editor
  def initialize(filename)
    @filename = filename
    @render = Render.new
    @buffer = Buffer.new
  end

  def run
    IO.console.raw do
      render.reset_screen
      loop do
        handle_input
        print buffer
      end
    end
  end
  
  private
  attr_reader :filename, :render, :buffer
  
  def handle_input
    char = read_char

    case char
    when "\cq" then quit
    else
      insert_char(char)
    end
  end


  def read_char
    char = $stdin.getc

    return char if char != "\e"

    maxlen = 3

    begin
      char << $stdin.read_nonblock(maxlen)
    rescue IO::WaitReadable
      return char if maxlen == 2

      maxlen -= 1
      retry
    end

    char
  end

  def quit
    render.reset_screen
    exit
  end

  def insert_char(char)
    @buffer = buffer.insert_char(char)
  end

end
