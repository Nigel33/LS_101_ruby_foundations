arr = ['10', '11', '9', '7', '8']

new_array = arr.map do |value|
	 value.to_i
end

final = new_array.sort do |a,b|
	b <=> a
end

p final




