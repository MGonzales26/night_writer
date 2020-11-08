require './test/test_helper'

class AlphabetTest < Minitest::Test

  def test_it_can_return_letters
    alphabet = Alphabet.new

    assert_equal ["0.", "..", ".."], alphabet.braille_alphabet["a"]
    assert_equal ["0.", "00", ".."], alphabet.braille_alphabet["h"]
    assert_equal ["00", "0.", "0."], alphabet.braille_alphabet["p"]
    assert_equal ["..", "..", ".."], alphabet.braille_alphabet[" "]
  end
end