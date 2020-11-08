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

  def test_it_can_translate_a_sentence
    text = './data/braille_test_sentence.txt'
    file = File.open(text, "r")
    incoming_text = file.read
    
    assert_equal "hello world", @document.translate_text(incoming_text)
  end

  def test_split_rows
    text = './data/braille_test_sentence.txt'
    file = File.open(text, "r")
    incoming_text = file.read

    expected = ["0.0.0.0.0....00.0.0.00", 
                "00.00.0..0..00.0000..0", 
                "....0.0.0....00.0.0..."]

    assert_equal expected, @document.split_rows(incoming_text)
  end

  def test_it_can_seperate_letters
    rows = ["0.0.0.0.", 
            ".00.0..0", 
            "..0.0.0."]

    expected = [["0.", "0.", "0.", "0."],
                [".0", "0.", "0.", ".0"],
                ["..", "0.", "0.", "0."]]

    assert_equal expected, @document.seperate_letters(rows)
  end

  def test_braille_to_english
    text = [["0.", ".0", ".."],
            ["0.", "0.", "0."],
            ["0.", "0.", "0."],
            ["0.", ".0", "0."]]

    assert_equal "ello", @document.braille_to_english(text)
  end
end