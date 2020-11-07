class BrailleWriter
  attr_reader :text

  def initialize(text)
    @text = text
    @braille_alphabet = braille_alphabet
  end

  def braille_alphabet
    {
      "a" => ["0.", "..", ".."],
      "b" => ["0.", "0.", ".."],
      "c" => ["00", "..", ".."],
      "d" => ["00", ".0", ".."],
      "e" => ["0.", ".0", ".."],
      "f" => ["00", "0.", ".."],
      "g" => ["00", "00", ".."],
      "h" => ["0.", "00", ".."],
      "i" => [".0", "0.", ".."],
      "j" => [".0", "00", ".."],
      "k" => ["0.", "..", "0."],
      "l" => ["0.", "0.", "0."],
      "m" => ["00", "..", "0."],
      "n" => ["00", ".0", "0."],
      "o" => ["0.", ".0", "0."],
      "p" => ["00", "0.", "0."],
      "q" => ["00", "00", "0."],
      "r" => ["0.", "00", "0."],
      "s" => [".0", "0.", "0."],
      "t" => [".0", "00", "0."],
      "u" => ["0.", "..", "00"],
      "v" => ["0.", "0.", "00"],
      "w" => [".0", "00", ".0"],
      "x" => ["00", "..", "00"],
      "y" => ["00", ".0", "00"],
      "z" => ["0.", ".0", "00"],
      " " => ["..", "..", ".."]
    }
  end

  def translate(text)
    text.chars.map do |letter|
      @braille_alphabet[letter]
    end
  end

  def group_by_line(text)
    braille_text = translate(text)
    braille_text.each_slice(40).to_a
  end

  def translate_text(text)
    lines = group_by_line(text)
    collector = []
    lines.each do |line|
      top_line = ""
      middle_line = ""
      bottom_line = ""
      line.map do |letter|
        top_line += letter[0]
        middle_line += letter[1]
        bottom_line += letter[2]
      end
      collector << top_line + "\n" + middle_line + "\n" + bottom_line
    end
    line_joiner(collector)
  end
  
  def line_joiner(collector)
    string = ""
    collector.each do |row|
      string += "#{row}\n"
    end
    string
  end
end