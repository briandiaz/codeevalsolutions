class MinimumDistance
	attr_accessor :friends, :streed_addresses

	def initialize(args)
		@args = args
	end

	def parse_distances
		@args = @args.split(" ").map(&:to_i)
	end

	def calculate(distance)
		(distance - 4)
	end

	def minimum_distance
		parse_distances
		@args.inject{ |sum, dist| sum + calculate(dist) }
	end
	
	
end

class Parser
	def initialize(args)
		
	end
	
	
end

min  = MinimumDistance.new("4 3 3 5 7")
puts min.minimum_distance
min  = MinimumDistance.new("3 20 30 40")
puts min.minimum_distance
