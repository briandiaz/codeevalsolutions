class RightMostChar

	attr_accessor :word, :char

	def initialize(word, char)
		@word = word
		@char = char
	end

	def rightmost_char
		(@word.rindex(@char) or -1)
	end

end
