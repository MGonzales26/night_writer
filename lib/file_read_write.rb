require './lib/braille_reader'

class FileReadWrite

  def initialize(argument_1, argument_2)
    @input = argument_1
    @output = argument_2
    @reader = BrailleReader.new
  end
  
  def file_open
    require 'pry'; binding.pry
    file = File.open(@input, "r")
    file.read
  end

  def translate_to_english
    incoming_text = file_open
    english_text = @reader.translate_text(incoming_text)
    incoming_text.close
    write_english
    puts "Created '#{@input}' containing #{(incoming_text.size / 6)} charaters'"
  end

  def write_english
    writer = File.open(@output, "w")
    writer.write(english_text)
    writer.close
  end
# file = File.open(argument_1, "r")

# incoming_text = file.read

# document = BrailleReader.new

# puts "Created '#{ARGV[1]}' containing #{(incoming_text.size / 6)} charaters'"
end