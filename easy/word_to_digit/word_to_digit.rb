def word_to_digit(word)
	{"zero" => 0 ,"one"=> 1,"two"=> 2,"three"=> 3,"four"=> 4,"five"=> 5,"six"=> 6,"seven"=> 7,"eight"=> 8,"nine"=> 9}[word].to_s
end

def words_to_digit(words)
	number = ""
	words.each{ |word| word = word.strip(); number += word_to_digit(word).to_s }
	number
end

File.open(ARGV[0]).each_line do |line|
	words = line.split(';')
	puts words_to_digit(words)
end
