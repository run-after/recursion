=begin
def merge_sort (arr, left=[], right=[])


  left = arr.slice!(0, arr.size/2)
  right = arr.slice!(0, arr.size)

  if left.size > 1
    merge_sort(left, right, arr)
  end
  if right.size > 1
    merge_sort(right, left, arr)
  end
  if left[0] < right[0] || right[0] == nil
    puts "left(#{left}) added"
    arr << left.slice!(0)
    
  elsif right[0] < left[0] || left[0 == nil]
    puts "right(#{right}) added"
    arr << right.slice!(0)
    
  end
  

  puts "arr: #{arr}"
  puts "left: #{left}"
  puts "right: #{right}"

end
=end
def merge(left, right, ans=[])

    if left.size > 0 && right.size > 0
      if left[0] < right[0]
        ans << left.slice!(0)
      else
        ans << right.slice!(0)
      end
    else
      if left.size == 0
        right.size.times { |x| ans << right[x] }
        return ans
      else
        left.size.times { |x| ans << left[x] }
        return ans
      end
    end
    merge(left, right, ans)
    puts "ans: #{ans}"
  end
  
  def sort(arr)
  
    if arr.size < 2
      return arr
    end
    #splits array in half
    left = arr.slice!(0, arr.size/2)
    right = arr.slice!(0, arr.size)
    #splits again
    sort(left)
    #puts 2 elements in order
    merge(left, right)
    #somehow puts the rest in order
    sort(right)
    merge(left, right)
  
    #p left
    #p right
  end
  
  sort([4, 8, 6, 2, 1, 7, 5, 3])
  
  #p merge([2, 4, 6, 8, 10], [1, 3, 5, 7], [])
  
  #merge_sort([2, 5, 6, 1, 7, 9])
  
  
  ########################## merge works for 2 sorted arrays ######################