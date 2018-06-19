hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

def print_vowels(word)
	array = %w(a e i o u)
	counter = 0
	while counter < array.size
		if word.include?(array[counter])
			puts "#{array[counter]}"
		end
		counter += 1
	end
end

hsh.each do |_, value|
	value.each do |word|
		print_vowels(word)
	end
end
