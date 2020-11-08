require './lib/braille_writer'

file = File.open(ARGV[0], "r")

incoming_text = file.read

document = BrailleWriter.new(incoming_text)

braille_text = document.translate_text(incoming_text)

file.close

writer = File.open(ARGV[1], "w")

writer.write(braille_text)

writer.close

puts "Created '#{ARGV[1]}' containing #{incoming_text.size} charaters'"

