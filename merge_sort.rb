def merge_sort(array, new_array)

  return if array.size < 2
  
  temp1 = array[0...array.size/2]
  temp2 = array[array.size/2..array.size]

  p temp1
  p temp2
  
  merge_sort(temp1, new_array)

  #p new_array
end

merge_sort([5, 3, 4, 2, 7, 1, 6, 9, 10, 6, 4], [])

#this divides the left half down to 1 element each. Still need to merge