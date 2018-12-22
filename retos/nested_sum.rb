$total = 0

def sum array
	for element in array
		sum element
	end
end

def sum element
	if element.kind_of?(Array)
		for inner_element in element
			sum inner_element
		end
	elsif element.is_a? Numeric
		$total += element
	end
end


sum ['a', 2, 4, ['1', 5, 'b', [2,3, ['a', 4, [1,'b',[5,'a']]]]]]
puts "La suma total es: #{$total}"