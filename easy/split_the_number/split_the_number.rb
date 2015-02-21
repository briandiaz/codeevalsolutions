def is_a_pattern?(char)
  char =~ /[+-]/
end

def get_operation(pattern)
	opp = ""
	pattern.each_char do |char|
		opp = char if is_a_pattern?(char)
	end
	opp
end

def split_the_number(number, pattern)
	operation = get_operation(pattern)
	patterns = pattern.split(/[+-]/)
	num_left, num_right = number[0..patterns[0].size-1].to_i, number[patterns[0].size..-1].to_i
	(operation == "+") ? num_left + num_right : num_left - num_right
end

File.open(ARGV[0]).each_line do |line|
	number, pattern = line.split(" ")
	puts split_the_number(number, pattern)
end

