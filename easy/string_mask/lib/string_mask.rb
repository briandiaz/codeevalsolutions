class StringMask

	def self.string_mask(word, binary_code)
		word.split("").each_with_index do |char, index|
			word[index] = word[index].upcase if binary_code[index] == "1"
		end
		word
	end

	def self.parse_data(line)
		line.split(" ")
	end
	
end