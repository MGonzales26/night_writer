class BrailleReader < Alphabet

  def initialize
    @alphabet = braille_alphabet.invert
  end
end