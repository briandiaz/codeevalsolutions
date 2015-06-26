class StepWiseWord
	attr_accessor :words

	def initialize(words)
		@words = words
	end

	def find_longest_word
		@words.group_by(&:size).max.last.first
	end

	def stepwise
		word = self.find_longest_word.split('') # convert word into a char array
		symbol = ""
		stepwised_word = ""
		word.each do |char|
			stepwised_word += "#{symbol}#{char} "
			symbol += "*"
		end
		stepwised_word.strip# remove the blank space
	end
end