=begin
Jacinda Zhong
Saturday, March 29, 2014
Project Euler Problem #2

=end

#THIS DOESN'T WORK! NEED TO FIND THE PATTERN TO USE RECURSION



fib_array = []
def fibSeq (first_num, second_num, last_num)		#n is the highest value in the returned fib sequence

  puts "I am in the fibSeq function, 1: #{first_num}, 2: #{second_num}"
  while second_num <= last_num
    puts "first_num: #{first_num}, second_num: #{second_num}, last_num: #{last_num}"
		first_num += second_num
		fib_array << first_num
    second_num = fib_array[-1]
		# second_num += first_num
		# fib_array << second_num
		puts "1st Number: #{first_num}, 2nd number: #{second_num}, fib array: #{fib_array}"
		return fibSeq(first_num, second_num, last_num)
	end
end

puts fibSeq(0, 1, 8)
