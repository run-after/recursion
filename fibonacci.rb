def fibs(num)
  
    fib1 = 0 
    fib2 = 1 
    i = 2
    while i <= num
        temp = fib2
        fib2 = fib2 + fib1
        fib1 = temp
        i += 1
    end
    fib2
  end
  
  def fibs_rec(num)
  
    return 0 if num == 0
    return 1 if num == 1
  
    fibs_rec(num-1) + fibs_rec(num-2)
  
  end
  
  p fibs_rec(25)
  p fibs(25)