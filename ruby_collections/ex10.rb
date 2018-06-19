munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

#go through each hash, and initialize a new key and value pair for element
#referencing the value from the age key
# age_group = nil
# munsters.each do |key,value|
# 	p key
# 	p value['age']
# 	munsters[key] << age_group
# end

# p munsters

# range1 = (0..17)
# range2 = (18..64)

# munsters.each_with_index do |key, index|
# 	if range1.include?(key[1]['age'])
# 		key[1]['age_group'] = 'kid'
# 	elsif range2.include?(key[1]['age'])
# 		key[1]['age_group'] = 'adult'
# 	else
# 		key[1]['age group'] = 'senior'
# 	end
# end

# p munsters

# munsters.each do |name, details|
#   case details["age"]
#   when 0...18
#     details["age_group"] = "kid"
#   when 18...65
#     details["age_group"] = "adult"
#   else
#     details["age_group"] = "senior"
#   end
# end

range1 = (0..17)
range2 = (18..64)

munsters.each do |key, value|
	if range1.include?(value['age'])
		value['age_group'] = 'kid'
	elsif range2.include?(value['age'])
		value['age_group'] = 'adult'
	else
		value['age group'] = 'senior'
	end
end

p munsters

