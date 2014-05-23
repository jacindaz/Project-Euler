=begin

RANDOM THOUGHTS:
  - in the example 2520, it is divisible by numbers 1-10
  - from 1-10 remove all numbers that are divisible by each other
  this includes: 1,2,3,4,5 (bc they are divisible by one of numbers 6-10)
  - then take the factors of 6-10
  - remove additional numbers, as long as the 2 factors can be found in
     another combination.
        for example: 6 = 2 x 3
         BUT 8 = 4 x 2
         so you can remove the 2 in 2x3=6
  - keep whittling down, and you will have 2,3,3,4,5,7 left

  Ta da! 2*3*3*4*5*7 = 2520

=end

def factor?(larger_num, smaller_num)
  return (larger_num % smaller_num) == 0
end
#puts factor?(20, 3)      #returns false
#puts factor?(20, 10)     #returns true

#returns an array of numbers that are not divisible by each other
#given the highest number in a range (n), if n=10, range is 1..10
def arrayDivisible(n)
  numbers_range = *(2..n)
  not_factors = numbers_range

  numbers_range.each do |smaller_number|
    numbers_range.each do |bigger_number|
      if factor?(bigger_number, smaller_number) == true
        not_factors.delete(smaller_number)
      end
      puts "smaller: #{smaller_number}, bigger: #{bigger_number}, array: #{not_factors}"
      break
    end #end bigger_number each loop
  end #end smaller_number each loop


end #end arrayDivisible method

arrayDivisible(20)


#def smallestNumber(divisible_by)



#end

