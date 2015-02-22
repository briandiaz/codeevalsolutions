def armstrong_number?(number)
	number.chars.inject(0) { |sum, digit| sum + (digit.to_i ** number.length) } == number.to_i
end

File.open(ARGV[0]).each_line do |line|
    puts armstrong_number?(line.strip).to_s.capitalize
end
