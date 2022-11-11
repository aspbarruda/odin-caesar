def caesar (string, shift_factor)
	new_string = string.split("").map do |letter|
		new_letter = letter
		if letter.match(/[a-z]/i)
			new_letter = string[letter].ord + shift_factor
			puts new_letter
			if string[letter] == string[letter].upcase
				while new_letter > 90
					new_letter = 64 + (new_letter - 90) #recyling through "A" if letter passed through "Z"
				end
			elsif string[letter] == string[letter].downcase
				while new_letter > 122
					new_letter = 96 + (new_letter) - 122
				end
			end
		end
		new_letter.chr
	end
	new_string.join("")
end

puts "Enter with string to convert: "
string = gets.chomp

puts "Enter with shifting factor"
shift = gets.chomp

result = caesar(string, shift.to_i)

puts result