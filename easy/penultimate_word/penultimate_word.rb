File.open(ARGV[0]).each_line do |line|
    if(line != nil)
		words = line.split(' ')
		if words.length > 1
			puts "#{words[words.length-2]}" 
		else
			puts "#{words.last}"
		end
	end
end