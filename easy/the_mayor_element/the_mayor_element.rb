def mayor_element(sequence)
	array = []
	the_mayor_element = nil
	sequence.uniq.each do |number|
		count_number_found = sequence.find_all { |num| num == number }.size
    	if count_number_found > (sequence.size / 2)
			the_mayor_element = number
			break
		end
	end
	(the_mayor_element || "None")
end

File.open(ARGV[0]).each_line do |line|
	nums = line.strip.split(",").map(&:to_i)
	puts mayor_element(nums)
end