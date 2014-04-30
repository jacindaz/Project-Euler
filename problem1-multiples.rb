=begin

If we list all the natural numbers below 10 that are 
multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

=end

array_of_multiples3_5 = []

#create an array with all multiples of 3 and 5
1000.times { |integer|
	if (integer % 3 == 0) or (integer % 5 == 0)
		array_of_multiples3_5 << integer
	end		
}

#sum all elements in the array
sum = 0
array_of_multiples3_5.each do |i|
	sum += i
end

puts sum