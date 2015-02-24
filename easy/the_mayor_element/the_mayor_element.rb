def mayor_element(sequence)
	array = []
	the_mayor_element_is_found = false
	the_mayor_element = 0
	sequence.each do |number|
		the_mayor_element = number
		sequence.each do |num|
			array << num if number == num
			if array.size == (sequence.size / 2)
				the_mayor_element_is_found = true
				break
			end
		end
		array = [] if !the_mayor_element_is_found
	end
	(array.size > 0) ? (the_mayor_element) : "None"
end

File.open(ARGV[0]).each_line do |line|
	nums = line.strip.split(",").map(&:to_i)
	puts mayor_element(nums)
end