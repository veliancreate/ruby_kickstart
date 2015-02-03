# Given an array of elements, return true if any element shows up three times in a row
# 
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false
def got_three?(arr)
	bool=false
	arr.each_with_index{|v,k|
		if v==arr[k+1]
			if v==arr[k+2]
				bool=true
				break
			end
		else
			bool=false
		end			
	}
	bool
end	 

