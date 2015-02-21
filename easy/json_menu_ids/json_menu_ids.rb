require 'json'

def json_id_label(data)
	json = data["menu"]["items"]
	value = 0
	json.each do |element|
		value += element["label"].sub("Label ","").to_i if !element.nil? and element.include?('label')
	end
	value
end

File.open(ARGV[0]).each_line do |line|
	data = JSON.parse(line)
	puts json_id_label(data)
end