def bit_position?(n,p1,p2)
	(((n >> (p1-1))&1) == ((n >> (p2-1))&1))
end

File.open(ARGV[0]).each_line do |line|
	numbers = line.split(",").map(&:to_i)
	n, p1, p2 = numbers[0], numbers[1], numbers[2]
	puts bit_position?(n,p1,p2)
end