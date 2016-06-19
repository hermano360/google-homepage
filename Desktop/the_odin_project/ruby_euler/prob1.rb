puts "\nPlease input a number to find the sum of all the multiples of 3 or 5 below it."
limit = gets.chomp

counter = 0
iterator = 0

while (iterator < limit.to_i)
	if(iterator%3==0 or iterator%5==0)
		counter += iterator
	end
	iterator +=1
end

puts "The expected sum is " + counter.to_s