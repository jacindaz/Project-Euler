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

def largestProductPalindrome(n)
	number1 = n
	number2 = n

	done = false

	largest_palindrome = 1

	#MULTIPLY the two numbers------------------------------------------------------------
	while not done
		num1_str = number1.to_s
		num2_str = number2.to_s

		#checking if last digit in each number is zero-----------------------------------
		if num1_str[-1] || num2_str[-1] != 0
			product = number1 * number2
			product_len = product.length
			if product.to_s[0] == product.to_s[-1]

		#if either number ends in zero----------------------------------------------------------
		else
			number2 -= 1
		end

	end


	#are the 2 numbers a PALINDROME?----------------------------------------------------


	#IF NO substract 1 from number2-------------------------------------------------------------------


	#IF YES store the number in largest_palindrome variable, and then SUBTRACT 1 from number 2++-------------

end


def isPalindrome?(n)
	#convert to string (reverse method only works on strings), reverse, convert back to int
	reverse_n = n.to_s.reverse.to_i
	return reverse_n && n
end




















































