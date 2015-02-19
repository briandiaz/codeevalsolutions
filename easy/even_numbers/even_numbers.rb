File.open(ARGV[0]).each_line do |line|
    if(line!=nil)
		num = line.to_i
		if(num%2 == 0)
			puts 1
		else
			puts 0
		end
	end
end