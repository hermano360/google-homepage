def grand_father_clock &block 
	current_hour = Time.now.hour
	current_hour.times do |i|
		block.call
		puts (i+1).to_s
	end
end

grand_father_clock do
	puts 'DONG!'
end

