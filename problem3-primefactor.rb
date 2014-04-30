=begin
Solved March 29, 2014
Jacinda Zhong
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=end

=begin
Random Thoughts:
	- binary search
	- continue to divide by 2, than by 3, etc.
	- loop stops when "new_n" variable is 2, or when new_n == dividing_int
=end

def primeFactors(n)

	dividing_int = 2.0
	new_n = n
	largest_prime = 2
	array_of_primes = []
	#puts "I am new_n: #{new_n}"
	#puts "I am the dividing_int: #{dividing_int}"

#--------------------EXCEPTIONS----------------------------------------
	if n == 1 || n == 0
		puts "I'm sorry, #{n} is not a prime factor!"
	# elsif (new_n / 2).integer? == true
	# 	new_n /= 2
	# 	#if it's a prime, store in an array
	# 	array_of_primes << 2
	# 	puts "I am the array_of_primes variable: #{array_of_primes}"
	# elsif (new_n / 3).integer? == true
	# 	new_n /= 3
	# 	array_of_primes << 3
	# 	puts array_of_primes
	end



#-----------DIVIDE BY 2 UNTIL NOT AN INTEGER--------------------------

	while new_n >= dividing_int
		#continue to divide new_n by dividing_int, until it is not an integer
		if new_n / dividing_int == 1.0
			#puts "I am exiting the while loop"
			array_of_primes << dividing_int.to_i
			str_primes = array_of_primes.join(", ")
			#puts "The prime numbers of #{n} are: #{str_primes}"
			return str_primes
		elsif new_n % dividing_int == 0
			new_n /= dividing_int
			#puts "I am the new integer: #{new_n}"
			#if it's a prime, store in an array
			array_of_primes << dividing_int.to_i
			#puts "I am in the if statement: #{array_of_primes}"
		elsif new_n % dividing_int != 0	#if the number / dividing_int is NOT an integer, increase dividing_int by 1
			dividing_int += 1.0 			#incremeting by 2 since prime #'s aren't even
			#puts "dividing_int: #{dividing_int}, new_n: #{new_n}"
		end
	end
end




#----------------------------TEST CASES--------------------------------
#primeFactors(0)
#primeFactors(1)
#primeFactors(12)
#primeFactors(20)
#primeFactors(13195)		#returns  5, 7, 13, 29
primeFactors(600851475143)
