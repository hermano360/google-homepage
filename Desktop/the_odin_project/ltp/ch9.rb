puts 'What is your birth year?'
year = gets.chomp
puts 'what is your birth month?'
month = gets.chomp
puts 'what is your birth day?'
day = gets.chomp


age =  ((((Time.new - Time.mktime(year, month, day))/60)/60)/24)/365

loop_age = age.to_i
i = 1
while loop_age > 0 do
	puts 'Here is SPANK number ' + i.to_s + '!'
	loop_age -= 1
	i += 1
end
