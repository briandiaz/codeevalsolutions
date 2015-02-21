# Not working
def data_recovery(words,numbers)
	result_text = ""
	numbers.each { |number| result_text += words[words.size-(number)] + " " }
	result_text
end

File.open("input.txt").each_line do |line|
	data = line.strip.split(";")
	words, numbers = data[0].split(" "), data[1].split(" ").map(&:to_i)
	#words.map { |e| words << " " }
	_words = []
	words.each_with_index do |word, index| 
		_words << word
		_words << " "  if index < word.size
	end

	#puts _words.to_s
	#puts words.to_s
	#puts numbers.to_s
	puts data_recovery(_words,numbers)
end
