def merge_sort(array, new_array)

  return array if array.size < 2
  
  new_array = array[0...array.size/2]
  temp = array[array.size/2..array.size]
  p temp
  new_array

end

p merge_sort([2, 3, 4, 5, 1, 7, 6, 9, 10, 6, 4], [])