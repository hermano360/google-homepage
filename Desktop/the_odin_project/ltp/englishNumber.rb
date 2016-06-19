def englishNumber number
	if (number < 0 or number > 10000)
		return 'Please enter number of acceptable range'
	else
		final_number = ''
		thousands = number/1000
		number_1 = number%1000
		hundreds = number_1/100
		number_2 = number_1%100
		tens = number_2/10
		ones = number_2%10

		tens_list = ["","","twenty", "thirty", "forty", "fifty", "sixty", "seventy","eighty", "ninety"]
		ones_list = ['','one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
		teens_list = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

		if thousands == 10
			final_number = 'ten thousand'
		elsif thousands > 0
			final_number = ones_list[thousands] + ' thousand '
		end
		if hundreds > 0
			final_number += ones_list[hundreds] + ' hundred '
		end

		if tens > 1
			final_number += tens_list[tens] 
			if ones > 0 
				final_number +=  '-' + ones_list[ones]
			end
		elsif tens == 1
			final_number += teens_list[ones]
		elsif (ones == 0 and thousands == 0 and hundreds == 0)
			final_number += 'zero'
		else
			final_number += ones_list[ones]
		end
	end
	return final_number
end

start = 0
while start < 10001
	puts englishNumber start
	start = start + 537
end

