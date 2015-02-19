require 'prime'

File.open(ARGV[0]).each_line do |line|
    if(line != nil)
		primes = Prime.take_while { |prime| prime < line.to_i }
		output = ""
		primes.each { |prime| output += prime.to_s + ","}
		print "#{output[0..output.length-2]}"
	end
	puts
end