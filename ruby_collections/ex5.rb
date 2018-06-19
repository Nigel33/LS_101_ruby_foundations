flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |name, index|
	if name.start_with?("Be")
		puts index
	end
end
