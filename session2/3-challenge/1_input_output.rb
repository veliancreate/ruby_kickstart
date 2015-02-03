# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
# 
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
	n = gets.chomp
	new_array=n.split(" ").map{|v,k|
		v.to_i
	}
	puts new_array[0]+new_array[1]
	puts new_array[0]-new_array[1]
	puts new_array[0]*new_array[1]	
end
