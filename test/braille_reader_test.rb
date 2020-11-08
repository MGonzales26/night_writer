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

  
end