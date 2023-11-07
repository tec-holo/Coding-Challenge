class LcdNumberService
  LCD_NUMBERS = {
    '0' => [" _ ", "| |", "|_|"],
    '1' => ["   ", "  |", "  |"],
    '2' => [" _ ", " _|", "|_ "],
    '3' => [" _ ", " _|", " _|"],
    '4' => ["   ", "|_|", "  |"],
    '5' => [" _ ", "|_ ", " _|"],
    '6' => [" _ ", "|_ ", "|_|"],
    '7' => [" _ ", "  |", "  |"],
    '8' => [" _ ", "|_|", "|_|"],
    '9' => [" _ ", "|_|", " _|"]
  }

  def initialize(number)
    @number = number.to_s
  end

  def to_lcd
    lines = (0..2).map do |line|
      @number.chars.map { |digit| LCD_NUMBERS[digit][line] }.join(' ') + "\n"
    end
    lines.join
  end
end
