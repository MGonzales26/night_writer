require './test/test_helper'

class AlphabetTest < Minitest::Test

  def test_it_can_return_letters
    alphabet = Alphabet.new

    assert_equal ["0.", "..", ".."], alphabet.braille_alphabet["a"]
    assert_equal ["0.", "00", ".."], alphabet.braille_alphabet["h"]
    assert_equal ["00", "0.", "0."], alphabet.braille_alphabet["p"]
    assert_equal ["..", "..", ".."], alphabet.braille_alphabet[" "]
  end

  def test_it_can_return_punctuation
    alphabet = Alphabet.new

    assert_equal ["..", "00", "0."], alphabet.braille_alphabet["!"]
    assert_equal ["..", "00", ".0"], alphabet.braille_alphabet["."]
    assert_equal ["..", "00", "0."], alphabet.braille_alphabet["?"]
  end

  def test_it_can_return_numbers
    alphabet = Alphabet.new

    assert_equal [[".0", ".0", "00"], [".0", "00", ".."]], alphabet.braille_alphabet["0"]
    assert_equal [[".0", ".0", "00"], ["0.", "0.", ".."]], alphabet.braille_alphabet["2"]
    assert_equal [[".0", ".0", "00"], ["00", "0.", ".."]], alphabet.braille_alphabet["6"]
  end

  def test_it_can_return_uppercase
    alphabet = Alphabet.new

    assert_equal [["..", "..", ".0"], ["0.", "..", ".."]], alphabet.braille_alphabet["A"]
    assert_equal [["..", "..", ".0"], ["0.", ".0", "00"]], alphabet.braille_alphabet["Z"]
  end
end