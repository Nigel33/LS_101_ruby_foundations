flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash = {}
number = 0
flintstones.select do |name|
	hash[name] = number
	number += 1
end

p hash

hash = {}

flintstones.each_with_index |name, index|

