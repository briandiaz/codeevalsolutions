File.open(ARGV[0]).each_line do |line|
    if(line != nil)
    	line.each_char do |chr| 
			if(chr == chr.upcase) 
				print chr.downcase 
			else 
				print chr.upcase 
			end
		end 
	end
end