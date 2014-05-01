=begin
Project Euler Problem 4
Jacinda Zhong
Friday, April 4, 2014

A palindromic number reads the same both ways. The largest palindrome
made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end

=begin

RANDOM THOUGHTS
	- what is the largest possible palindrome:
	- largest 3-digit product possible: 999 x 999 = 998001
	- smallest 3-digit product: 111 x 111 = 12321
	- could do a loop within a loop, trying every single 3 digit number starting at 111
		ending at 999, to see if it produces a palindrome
	- if it does produce a palindrome, store it in an array
		- return the number that is the largest in the array
	- could also store it in a variable
		- if the number is greater than the current num in the var, replace it with new num

POSSIBILITIES TO ELIMNATE:
	- any number ending in zero, the product can't be a palindrome bc product will end in zero
	-

=end

#check if n is a palindrome----------------------------------------------------
def isPalindrome?(n)
	#convert to string (reverse method only works on strings), reverse, convert back to int
	reverse_n = n.to_s.reverse.to_i
	return (reverse_n == n)
end

#do numbers ending with zero (can't be a palindrome)-----------------------------
#returns true if both end in zero, false if neither end in zero, or the number itself if
def endsZero?(n1, n2)
	num1_str = n1.to_s
	num2_str = n2.to_s
	if num1_str[-1] == "0" && num2_str[-1] == "0"
		return true
	elsif num1_str[-1] == "0"
		return n1
	elsif num2_str[-1] == "0"
		return n2
	elsif num1_str[-1] != "0" && num2_str[-1] != "0"
		return false
	end #ending the if statement
end

#endsZero? TEST CASES------------------------------------
#puts endsZero?(70, 91)     #=> returns 91
#puts endsZero?(71, 90)     #=> returns 71
#puts endsZero?(71, 91)     #=> returns false
#puts endsZero?(70, 90)     #=> returns true


#return largest palindrome product------------------------------------------------
def largestProductPalindrome(n)
	stop_whileLoop = n * (3/4.0)
	puts stop_whileLoop

	number1 = n
	number2 = n
	palindrome_array = []

	inner_done = false
	outer_done = false

	while number1 > stop_whileLoop

		while number2 > stop_whileLoop
			#puts "Inside while not done loop"
			if endsZero?(number1, number2) == false
				#puts "Num 1(#{number1}) and 2(#{number2}) do not end in zero"
				product = number1 * number2
				if isPalindrome?(product) == true
					palindrome_array << product
					#inner_done = true
					#puts "This is a palindrome! Num1: #{number1}, Num2: #{number2}, Palindrome: #{product}"
		 			#puts "These are palindromes: #{palindrome_array}"
		 			#puts nil
		 			#return number1, number2
				end #end isPalindrome? if statement
				number2 -=1
			elsif endsZero?(number1, number2) == number1
				number1 -= 1
			elsif endsZero?(number1, number2) == number2
					number2 -= 1
			else #when both numbers end with zero
					number1 -= 1
					number2 -= 1
			end
		end #end for while loop, number2 -= 1

		#reduce number1 by 1, reset number2 to loop through again
		number1 -= 1
		number2 = n
	end #end for while loop, number1 -= 1

	#sort the palindrome array, and return the last element (largest palindrome)--------
	remove_dupes = palindrome_array.uniq
	sorted_palindrome_array = remove_dupes.sort
	puts "Final array of palindromes: #{sorted_palindrome_array}, length: #{sorted_palindrome_array.length}"
	return sorted_palindrome_array[-1]


end #end for largestProductPalindrome function




#TEST CASES---------------------------------------------------------------------------


#returns 91, 99
largestProductPalindrome(999)




















































