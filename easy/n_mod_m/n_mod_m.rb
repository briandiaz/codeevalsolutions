def mod(n,m)
	n % m
end

File.open(ARGV[0]).each_line do |line|
	numbers = line.split(',')
	n, m = numbers[0].to_i, numbers[1].to_i
	puts mod(n, m)
end