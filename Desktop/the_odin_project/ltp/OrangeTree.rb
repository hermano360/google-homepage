class OrangeTree
	def initialize
	   @height = 0
	   @oranges = 0
	   @age = 0
	end
	
	
	def oneYearPasses
	   
	   @age += 1

	   if @age < 10
	      @height += 11 - @age
	   else
		@height += 1
	   end

	   if @age > 5
		@oranges = @age - 5
	   end
	
	   if @age > 30
		puts 'The tree has gotten too old and died...'
		exit   
	   end	
	end
	
	def countTheOranges
	   puts 'The number of oranges available is ' + @oranges.to_s + '.'
	end
	
	def pickAnOrange
	   if @oranges > 0
		puts 'Wow that was an amazing orange!'
		@oranges -= 1
	   else
		puts 'Unfortunately, there are no oranges available'
	   end
	end
	
	def age
	   puts 'The age of the tree is ' + @age.to_s
	end
	
	def height
	   puts 'The height of the tree is ' +@height.to_s
	end
end

norbert = OrangeTree.new

norbert.age
norbert.height
norbert.countTheOranges
norbert.oneYearPasses
norbert.age
norbert.height
norbert.countTheOranges
norbert.pickAnOrange
norbert.oneYearPasses
norbert.age
norbert.height
norbert.countTheOranges
norbert.pickAnOrange
norbert.oneYearPasses
norbert.age
norbert.height
norbert.countTheOranges
norbert.pickAnOrange
norbert.oneYearPasses
norbert.age
norbert.height
norbert.countTheOranges
norbert.pickAnOrange
norbert.oneYearPasses
norbert.age
norbert.height
norbert.countTheOranges
norbert.pickAnOrange
norbert.oneYearPasses
norbert.age
norbert.height
norbert.countTheOranges
norbert.pickAnOrange
norbert.oneYearPasses
norbert.age
norbert.height
norbert.countTheOranges
norbert.pickAnOrange
norbert.oneYearPasses
norbert.age
norbert.height
norbert.countTheOranges
norbert.pickAnOrange
norbert.oneYearPasses
norbert.age
norbert.height
norbert.countTheOranges
norbert.pickAnOrange
norbert.countTheOranges
norbert.pickAnOrange
norbert.countTheOranges
norbert.pickAnOrange
norbert.countTheOranges
norbert.pickAnOrange
norbert.countTheOranges
norbert.pickAnOrange
norbert.countTheOranges
norbert.pickAnOrange
norbert.countTheOranges
norbert.pickAnOrange