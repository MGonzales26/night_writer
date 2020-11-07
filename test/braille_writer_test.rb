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
    expected = "This is a test sentence.\nThis is also a test sentence."

    assert_equal expected, @document.text
  end
  
  def test_braille_letter_a
    expected = "0.\n..\n.."

    assert_equal expected, @document.braille_alphabet["a"]
  end

  def test_it_can_translate_a_letter
    expected = "0.\n..\n.."

    assert_equal = @document.translate("a")
  end
end