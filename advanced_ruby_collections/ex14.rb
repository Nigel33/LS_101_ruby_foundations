hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

final_array = hsh.map do |_,sub_hash|
	if sub_hash[:type].include?('fruit')
		color_array = sub_hash[:colors]
			color_array.each do |color|
				color.capitalize!
			end
	elsif sub_hash[:type].include?('vegetable')
		sub_hash[:size].upcase!
	end
end

p final_array
