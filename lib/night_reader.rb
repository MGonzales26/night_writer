require './lib/file_read_write'

# require 'pry'; binding.pry
file = FileReadWrite.new(ARGV[0], ARGV[1])

file.translate_to_english

# file = File.open(ARGV[0], "r")

# incoming_text = file.read

# document = BrailleReader.new

# english_text = document.translate_text(incoming_text)

# file.close

# writer = File.open(ARGV[1], "w")

# writer.write(english_text)

# writer.close

# puts "Created '#{ARGV[1]}' containing #{(incoming_text.size / 6)} charaters'"

