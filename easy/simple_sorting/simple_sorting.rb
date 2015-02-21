def sort(numbers)
	numbers.sort.map { |n| '%0.3f' % n  }.join(' ')
end

File.open(ARGV[0]).each_line do |line|
	numbers = line.split(" ").map(&:to_f)
	puts sort(numbers)
end