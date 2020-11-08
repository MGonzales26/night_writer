require './lib/alphabet'

class BrailleReader < Alphabet
  attr_reader :alphabet

  def initialize
    @alphabet = braille_alphabet.invert
  end

  def translate(text)
    alphabet[text.split("\n")]
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

  def translate_text(text)
    rows = split_rows(text)
    lines = seperate_letters(rows)
    braille_text = lines[0].zip(lines[1], lines[2])
    braille_to_english(braille_text)
  end
end