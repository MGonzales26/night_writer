require './test/test_helper'

class BrailleReaderTest < Minitest::Test

  def setup
    text = './data/test_output.txt'

    file = File.open(text, "r")
    @incoming_text = file.read

    @document = BrailleReader.new
  end

  def test_it_exists
    assert_instance_of BrailleReader, @document
  end

  def test_it_has_inverted_alphabet
    assert_equal "a", @document.alphabet[["0.", "..", ".."]]
  end

  def test_it_can_translate_a_letter
    assert_equal "t", @document.translate(@incoming_text)
  end

end