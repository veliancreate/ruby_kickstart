# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.
class BeerSong
	attr_accessor :bottles
	def initialize(bottles)
		if bottles > 99
			bottles = 99
		elsif bottles < 0 
			bottles = 0
		end			 
		@bottles = bottles
	end
	
	def print_song
		while @bottles>0
			play_song(@bottles)
			@bottles-=1
		end	
	end	

	def englishify(num)
		ones = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
		tens = {2=>'twenty',3=>'thirty',4=>'fourty',5=>'fifty',6=>'sixty',7=>'seventy',8=>'eighty',9=>'ninety'}
		if num<=19 
			ones[num]	
		elsif num >=20 and num%10==0 
			tens[num/10]
		else num >=20 and num%10!=0
			tens[num/10]+'-'+ones[num%10]	
		end	
	end	
	
	def b(num)
		if num == 1 then b="bottle" else b="bottles" end
	end
	
	def play_song(num)
		if num == 0 
			String.new
		else 
			play=	"#{englishify num} #{b num} of beer on the wall,",
					"#{englishify num} #{b num} of beer,",
					"Take one down, pass it around,",
					"#{englishify num-1} #{b num-1} of beer on the wall."		
			play.map{|l| l.capitalize!}
			puts play			
		end
	end	
end		
