# 80% percentage
def rightmost_char(word, char)
	(word.rindex(char) or -1) if char and word
end

File.open(ARGV[0]).each_line do |line|
	word, char = line.strip.split(",")
	puts rightmost_char(word, char)
end