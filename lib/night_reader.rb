require './lib/braille_reader'

file = File.open(ARGV[0], "r")

incoming_text = file.read

document = BrailleReader.new

english_text = document.translate_text(incoming_text)

file.close

writer = File.open(ARGV[1], "w")

writer.write(english_text)

writer.close

puts "Created '#{ARGV[1]}' containing #{(english_text.size)} charaters'"

