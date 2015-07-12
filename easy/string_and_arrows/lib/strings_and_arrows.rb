class StringsAndArrows
	attr_accessor :symbols

	def initialize(symbols)
		@symbols = symbols
	end

	def count_arrows
		arrow = {
					normal: '>>-->',
					reverse: '<--<<'
		}
		count = 0
		(0..@symbols.length - 5).each_with_index do |char, index|
			str = @symbols[index..index+4]
			if str == arrow[:normal] or str == arrow[:reverse]
				count += 1
			end
		end
		count
	end
end
