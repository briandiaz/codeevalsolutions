class CleanUpTheWords
	attr_accessor :words
	def initialize(args)
		@words = args		
	end

	def clean
		r_words  = @words.scan(/[a-zA-Z]*/i)
		r_words.select! { |w| w != ""  }
		cleaned_up_words = ""
		r_words.each { |w| cleaned_up_words += w.downcase + " " }
		puts cleaned_up_words.strip
	end
end
# ARGV[0]
File.open("test.txt").each_line do |line|
    c = CleanUpTheWords.new(line)
    c.clean
end