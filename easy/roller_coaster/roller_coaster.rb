def is_a_letter?(char)
  char =~ /[A-Za-z]/
end

def roller_coaster(words)
	roller_coaster_phrase = ""
	turn = true
	words.chars.each do |e|
		if is_a_letter? (e)
			roller_coaster_phrase += (turn) ? e.upcase : e.downcase
			turn = !turn
		else
			roller_coaster_phrase += e
		end
	end
	roller_coaster_phrase
end


File.open(ARGV[0]).each_line do |line|
	word = line.strip
	puts roller_coaster(word)
end