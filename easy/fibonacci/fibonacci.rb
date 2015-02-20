def fibonacci(n)
	(n <= 1) ? n : fibonacci(n-1) + fibonacci(n-2)
end

File.open(ARGV[0]).each_line do |line|
	number = line.to_i
	puts fibonacci(number)
end