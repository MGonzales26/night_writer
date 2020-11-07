file = File.open(ARGV[0], "r")

incoming_text = file.read

file.close

capitalized_text = incoming_text.upcase

writer = File.open(ARGV[1], "w")

writer.write(capitalized_text)

writer.close

puts "Created '#{ARGV[1]}' containing #{incoming_text.size} charaters'"

