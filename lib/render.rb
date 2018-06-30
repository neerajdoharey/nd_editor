class Render
  def reset_screen
    move_cursor(0, 0)
    clear_screen
  end

  def move_cursor(row, col)
    print "\e[#{row + 1};#{col + 1}H"
  end

  def clear_screen
    print "\e[J"
  end

  def rerender

  end
end
