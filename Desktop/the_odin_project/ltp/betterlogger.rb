def tab(g)
	i = ''
	g.times do 
		i += '  '
	end
	i
end

def log descriptionOfBlock, &block 
	
	if $global == 0
		puts 'Beginning "outer block"...'

	end
	
	$global += 1
	block.call
	$global -= 1

	if $global == 0
		puts '..."outer block" finished, returning:  ' + descriptionOfBlock
	end
end

$global = 0
$repeat = 0

log 'true' do
	
		puts tab($global) + 'Beginning "some little block"...'
		log 'second' do
			puts tab($global)+'Beginning "teeny-tiny block"...'
			puts tab($global)+'..."teeny-tiny block" finished, returning: lots of love'
		end
		puts tab($global)+'..."some little block" finished, returning: 42'

		puts tab($global)+'Beginning "yet another block"...'
		puts tab($global)+'..."yet another block" finished", returning: I love Indian food!'	


end







#puts tab($global)