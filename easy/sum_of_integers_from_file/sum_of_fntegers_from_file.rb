sum = 0
File.open(ARGV[0]).each_line do |line|
    if(line != nil)
    	sum += line.to_i
	end
end
print "#{sum}"