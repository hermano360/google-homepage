class Submission

	def cow
		puts "hey"
	end

	def manual
		puts 'Who is the Southwest Engineer for this project? (First name)'
		swg_engineer = gets.chomp
	end

end


daniel = Submission.New
daniel.cow