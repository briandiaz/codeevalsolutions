class SwapNumbers
	attr_accessor :args
	def initialize(args)
		@args = args
	end
	
	def parse_data
		@args = @args.split(" ")
	end

	def swap_numbers
		parse_data
		@args.each do |word|
			first, last = word[0], word[word.length - 1]
			word[0], word[word.length - 1] = last, first
		end
		@args.join(" ")
	end
end
