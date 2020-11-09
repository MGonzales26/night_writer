require './lib/alphabet'

class BrailleWriter < Alphabet

  def initialize
    @braille_alphabet = braille_alphabet
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
        if letter.count == 3
          top_line += letter[0]
          middle_line += letter[1]
          bottom_line += letter[2]
        elsif letter.count == 2
          letter.map do |letter|
            top_line += letter[0]
            middle_line += letter[1]
            bottom_line += letter[2]
          end
        end
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