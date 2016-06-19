def log descriptionOfBlock, &block
	
	block.call
	
end

log 'IDK' do | |
	puts 'Beginning of "outer block"...'
	puts 'Beginning "some little block"...'
	puts '..."some little block" finished: returning: 5'

	log "IDK2" do 
		puts 'Beginning "yet another block"...'
		puts '..."yet another block" finished, returning: I like Thai food!'
		puts '..."outer block" finished, returning: false'
	end
end