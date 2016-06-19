puts "\nPlease enter a number to find its largest prime factor: \n"
prime_number = gets.chomp

copy = prime_number.to_i
prime_factors = []
largest_factor = 1

while copy > 1
	iterator = 2
	while (copy%iterator!=0)
		iterator += 1
	end
	if iterator > largest_factor
		largest_factor = iterator
	end
	copy /= iterator
end

puts 'The largest prime factor of ' + prime_number + ' is ' + largest_factor.to_s
