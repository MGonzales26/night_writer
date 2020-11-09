require './lib/alphabet'

class BrailleReader < Alphabet
  attr_reader :alphabet

  def initialize
    @alphabet = braille_alphabet.invert
  end
  
  def split_rows(text)
    text.split("\n")
  end
  
  def seperate_letters(rows)
    rows.map do |row|
      row.scan(/../)
    end
  end
  
  def braille_to_english(text)
    text.map do |letter|
      @alphabet[letter]
    end.join
  end
  
  def zip_lines(lines)
    grouped_lines = lines.each_slice(3).to_a.transpose
    grouped_lines[0].zip(grouped_lines[1], grouped_lines[2])
  end
  
  def group_braille_letters(zipped_lines)
    braille_text = []
    zipped_lines.map do |group|
      braille_text <<(group[0].zip(group[1], group[2]))
    end
    braille_text
  end
  
  def translate_braille(braille_letters)
    all_letters = []
    dual_character = []
    braille_letters.each do |line|
      line.each do |letter|
        if dual_character == []
          if (letter == [".0", ".0", "00"]) || (letter == ["..", "..", ".0"])
            dual_character << letter
          else 
            all_letters << letter
          end
        else
          dual_character << letter
          all_letters << dual_character
          dual_character = []
        end
      end
    end
    braille_to_english(all_letters)
  end
  
  def translate_text(text)
    rows = split_rows(text)
    lines = seperate_letters(rows)
    zipped_lines = zip_lines(lines)
    braille_letters = group_braille_letters(zipped_lines)
    translate_braille(braille_letters)
  end
end