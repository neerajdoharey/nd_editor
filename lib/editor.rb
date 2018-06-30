class Editor
  def initialize(filename)
    @filename = filename
    @render = Render.new
  end

  def run
    IO.console.raw do
      render.reset_screen
      #loop do
      
      #end
    end
  end
  
  private
  attr_reader :filename, :render

end
