def string_mask(word, binary_code)
	word.split("").each_with_index do |char, index|
		word[index] = word[index].upcase if binary_code[index] == "1"
	end
	word
end

def parse_data(line)
	line.split(" ")
end

File.open(ARGV[0]).each_line do |line|
	data = parse_data(line)
	puts string_mask(data[0], data[1])
end