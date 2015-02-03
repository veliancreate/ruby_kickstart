# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(n)
	a=[]
	b=[]
	c={}
	(1..n).each do |mod|
		if mod %2 != 0 
			a<<mod
		else 
			b<<mod
		end	
	end
	a.each{|i|
		hash_vs = b.select{|v| v<i}
		c={i => hash_vs}
	}
	puts c.to_s
end	
staircase(9)