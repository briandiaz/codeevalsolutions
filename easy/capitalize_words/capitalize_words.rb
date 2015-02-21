def humanize(word)
	word[0].upcase + word[1..-1]
end

def humanize_words(words)
	words.map!{ |word| word = humanize(word) }.join(" ")
end

File.open(ARGV[0]).each_line do |line|
	words = line.split(" ")
	puts humanize_words(words)
end