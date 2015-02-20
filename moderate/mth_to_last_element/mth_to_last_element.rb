def mth_element(data)
	elements = data[0..(data.length-2)]
	mth = data[data.length-1].to_i
	elements[elements.size-mth] if mth <= elements.size
end


File.open(ARGV[0]).each_line do |line|
	data = line.split(' ')
	puts mth_element(data)
end
