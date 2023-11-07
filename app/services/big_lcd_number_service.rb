class BigLcdNumberService
  # Define the big LCD segments for each number
  BIG_LCD_NUMBERS = {
    '0' => [" __ ", "|  |", "|  |", "|  |", "|  |", "|__|"],
    '1' => ["    ", "   |", "   |", "   |", "   |", "   |"],
    '2' => [" __ ", "   |", "   |", " __ ", "|   ", "|__ ", " __ "],
    '3' => [" __ ", "   |", "   |", " __ ", "   |", " __|", " __ "],
    '4' => ["    ", "|  |", "|  |", " __ ", "   |", "   |"],
    '5' => [" __ ", "|   ", "|   ", " __ ", "   |", " __|", " __ "],
    '6' => [" __ ", "|   ", "|   ", " __ ", "|  |", "|__|", " __ "],
    '7' => [" __ ", "   |", "   |", "    ", "   |", "   |"],
    '8' => [" __ ", "|  |", "|  |", " __ ", "|  |", "|__|", " __ "],
    '9' => [" __ ", "|  |", "|  |", " __ ", "   |", " __|", " __ "]
  }

  def initialize(number)
    @number = number.to_s
  end

  def to_lcd
    # Calculate the number of lines needed for the big LCD representation
    num_lines = BIG_LCD_NUMBERS.values.first.length

    lines = (0...num_lines).map do |line|
      @number.chars.map { |digit| BIG_LCD_NUMBERS[digit][line] }.join(' ') + "\n"
    end

    lines.join
  end
end
