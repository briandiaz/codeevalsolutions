File.open(ARGV[0]).each_line do line
    if(line != nil)
    	line.each_char do chr 
				print chr.downcase 
		end 
	end
end