require_relative 'bridge'

class BayBridges
	attr_accessor :bridges

	def initialize(bridges)
		@bridges = bridges
	end
	
	def not_crossing_bridges
		efficient_bridges = []
		@bridges.each_with_index do |bridge, index|
			if index < @bridges.size - 1
				next_bridge = bridges[index + 1]
			    efficient_bridges << bridge.id if not Bridge.intersection(bridge, next_bridge)
			else
				next_bridge = bridges[index - 1]
				efficient_bridges << bridge.id if not Bridge.intersection(bridge, next_bridge)
			end
		end
		efficient_bridges.sort
	end
end
bridges = []
File.open("test.txt").each_line do |line|
	bridges << Bridge.parse(line)
end
bay_bridges = BayBridges.new(bridges)
puts bay_bridges.not_crossing_bridges
puts "hiring".match(/hiring|trending|featured|raising/i).nil?