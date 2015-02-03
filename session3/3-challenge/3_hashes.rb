# Write a method that takes a string and returns an array
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

def word_count(string)
	ret_hash = {}
	num = []
	str_arr = string.split.map!{|n| n.downcase}
	len = str_arr.length
	(0..len-1).each{|v|
		num << str_arr.count(str_arr[v])
	}
	ret_hash=Hash[str_arr.zip(num)]
end	

puts word_count("The dog and the cat")


# def word_count(string)
# words = Hash.new {0}
# string.split.each {|word| words[word.downcase] += 1}
# puts words	
# end
# word_count("The dog and the cat")