def fibonacciSummedEvens(n)
  fib_int1 = 0
  fib_int2 = 1
  fib_int_sum = 1
  sum_even_fibs = 0
  while (fib_int_sum < n) do            #do is optional
    fib_int_sum = fib_int1 + fib_int2
    fib_int1 = fib_int2
    fib_int2 = fib_int_sum
    #puts fib_int_sum
    if fib_int_sum.even? == true then     #then is optional
      sum_even_fibs += fib_int_sum
    end
  end
  puts sum_even_fibs
end


fibonacciSummedEvens(4000000)

