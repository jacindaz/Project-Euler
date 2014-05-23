require 'pry'
require 'prime'


def factor?(larger_num, smaller_num)
  return (larger_num % smaller_num) == 0
end
#puts factor?(20, 3)      #returns false
#puts factor?(20, 10)     #returns true

#returns an array where n is the largest number
#returns array where all numbers are not factors of each other
def remove_factors(n)
  numbers_range = *(2..n)
  range_length = numbers_range.length
  numbers_to_check = numbers_range[(range_length/2), range_length]
  return numbers_to_check
end
#puts "#{remove_factors(10)}"


def return_primes(n)
  return n.prime_division
end
puts "#{return_primes(2520)}"


#returns an array of numbers that are not divisible by each other
#given the highest number in a range (n), if n=10, range is 1..10
def arrayDivisible(n)
  not_factors = []
  numbers_to_check = remove_factors(n)

  index1 = 0
  index2 = 1

  puts "index1: #{index1}, index2: #{index2}, array: #{numbers_to_check}"
  #binding.pry

  while index1 <= range_length

    while index2 <= range_length
      if numbers_to_check[index2] % numbers_to_check[index1] != 0
        puts "num1: #{numbers_to_check[index1]}, num2: #{numbers_to_check[index2]}, array: #{numbers_to_check}"
        not_factors << numbers_to_check[index2]
        puts "New array: #{not_factors}"
        puts nil
      end
      index2 += 1
    end
    index1 += 1
  end

  not_factors

end
#arrayDivisible(20)


#def smallestNumber(divisible_by)



#end














