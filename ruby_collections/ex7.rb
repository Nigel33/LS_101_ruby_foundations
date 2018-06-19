statement = "The FFfflintstonessssssssssss rrrock"

#pull out each unique char into a key
#count each char, and place it into value of key


array = statement.delete(' ').downcase.chars
hash1 = {}

array.each do |letter|
		if hash1.has_key?(letter)
			hash1[letter] = array.count(letter)
		else
			hash1[letter] = 1
		end
end

p hash1


