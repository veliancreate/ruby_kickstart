# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	string = self
  	return_string = String.new
  	new_string_array = string.split(//).map.with_index{|v,k|
  		if k.even? or k==0
  			return_string << v
  		end	
  	}
  	return_string
  end
end