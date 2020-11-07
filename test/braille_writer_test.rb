require './test/test_helper'

class BrailleWriterTest < Minitest::Test

  def setup
    text = './data/test_input.txt'

    file = File.open(text, "r")

    incoming_text = file.read

    @document = BrailleWriter.new(incoming_text)
  end

  def test_it_exists
    assert_instance_of BrailleWriter, @document
  end

  def test_it_has_attributes
    skip
    expected = "This is a test sentence.\nThis is also a test sentence."

    assert_equal expected, @document.text
  end
  
  def test_braille_letter_a
    skip
    expected = "0.\n..\n.."

    assert_equal expected, @document.braille_alphabet["a"]
  end

  def test_it_can_translate_a_letter
    skip
    expected = "0.\n..\n.."

    assert_equal = @document.translate("a")
  end

  def test_it_can_translate_text_small
    skip
    text = "at"

    expected = "0.\n..\n.."".0\n00\n0."

    assert_equal expected, @document.translate_text(text)
  end

  def test_it_can_translate_text_large
    skip
    text = "hello world"

    expected = "0.\n00\n..""0.\n.0\n..""0.\n0.\n0.""0.\n0.\n0.""0.\n.0\n0.""..\n..\n.."".0\n00\n.0""0.\n.0\n0.""0.\n00\n0.""0.\n0.\n0.""00\n.0\n.."

    assert_equal expected, @document.translate_text(text)
  end

  def test_braille_letters_on_same_row
    text = "at"

    expected = "0..0\n..00\n..0."
require 'pry'; binding.pry
    assert_equal expected, @document.translate_text(text)
  end
end