class BrailleReader < Alphabet
  attr_reader :alphabet

  def initialize
    @alphabet = braille_alphabet.invert
  end

  def translate(text)
    alphabet[text.split("\n")]
  end
end