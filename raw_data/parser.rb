require 'set'
card_list = ARGV[0]
puts "parsing #{card_list}"

=begin
puts "File.open"

File.open(card_list, "r") do |f|
	f.each_line do |line|
		puts line
	end
end
=end

cards = File.open(card_list, "r").read.split("<-- NEW CARD -->")

=begin
puts "Cards. iteration"
cards.each { |card| 
	puts card 
}
=end

puts "Each line"
=begin
cards.each { |card| 
	card.each_line do |line|
		puts line
	end
}
=end

traits = Set.new()

puts traits
cards.each { |card| 
	card.each_line do |line|
		cardline = line.split(': ',2)
		if cardline.count == 1 && cardline[0] != "\n" then 
			puts card
		end
		traits.add(cardline[0])
	end
}

puts traits