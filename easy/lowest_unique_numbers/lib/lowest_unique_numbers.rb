class LowestUniqueNumbers
	attr_accessor :args

	def initialize(args)
		@args = args
	end

	def parse_numbers
		@args = @args.split(" ").map(&:to_i)
	end

	def lowest_unique_numbers
		parse_numbers
		lowest_unique_number = @args.sort.detect{ |number| @args.count(number) <= 1 }
		(lowest_unique_number) ? (@args.index(lowest_unique_number) + 1) : 0
	end
	
end