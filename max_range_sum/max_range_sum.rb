def max_range_sum(gains_loses, day)
	first_day, last_day = (day-1), (day-1) + 5
	gains_loses[first_day..last_day].select { |profit| profit > 0 }.inject(:+) || 0
end
File.open("test.txt").each_line do |line|
	data = line.split(";")
	day, numbers = data[0].to_i, data[1].split(" ").map(&:to_i)
	puts max_range_sum(numbers, day)
end
