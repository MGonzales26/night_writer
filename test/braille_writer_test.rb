require './test/test_helper'

class BrailleWriterTest < Minitest::Test

  def setup
    text = './data/test_input.txt'

    file = File.open(text, "r")
    incoming_text = file.read

    @document = BrailleWriter.new
  end

  def test_it_exists
    assert_instance_of BrailleWriter, @document
  end
  
  def test_braille_letter_a
    expected = ["0.", "..", ".."]

    assert_equal expected, @document.braille_alphabet["a"]
  end

  def test_it_can_translate
    expected = ["0.", "..", ".."]

    assert_equal = @document.translate("a")
  end

  def test_it_can_translate_text_small
    text = "at"

    expected = "0..0\n..00\n..0.\n"

    assert_equal expected, @document.translate_text(text)
  end

  def test_it_can_translate_text_large
    text = "hello world"

    expected = "0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...\n"

    assert_equal expected, @document.translate_text(text)
  end

  def test_braille_letters_on_same_row
    text = "at"

    expected = "0..0\n..00\n..0.\n"

    assert_equal expected, @document.translate_text(text)
  end

  def test_it_can_translate_numbers
    text = "a26"
    
    expected = "0..00..000\n...00..00.\n..00..00..\n"

    assert_equal expected, @document.translate_text(text)
  end
end