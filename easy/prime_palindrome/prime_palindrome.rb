require 'prime'
nums = Array.new
primes = Prime.take(1000)
primes.each { |num| 
    if (num.to_s.reverse == num.to_s)
		nums.push(num)
	end
}
print "#{nums.last}"