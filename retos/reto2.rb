def sum_sign_mastery(array)
	@sum = 0
	sign = 1
  for element in array
 		if element.eql?(-1)
 			sign *= -1
 			next
 		end
		@sum = @sum + (element * sign)
	end
	puts "El valor final es: #{@sum}."
end

sum_sign_mastery [2, 14, -1, 5, 6, -1, 4, 2]