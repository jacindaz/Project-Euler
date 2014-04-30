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
def endsZero?(n1, n2)
	num1_str = n1.to_s
	num2_str = n2.to_s
	return (num1_str[-1] != "0") || (num2_str[-1] != "0")
end



# #return largest palindrome product------------------------------------------------
def largestProductPalindrome(n)
	number1 = n
	number2 = n

	done = false
	largest_palindrome = 1

	if endsZero?(number1, number2) == false
		product = number1 * number2
		if isPalindrome?(product) == true
			return product
		else

	elsif endsZero?(number1, number2) == true
		number1 -= 1
		number2 -= 1
	end

end #end for largestProductPalindrome function



#TEST CASES---------------------------------------------------------------------------
largestProductPalindrome(120)






















































