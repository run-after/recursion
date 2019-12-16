require 'pry'
def merge(left, right)
  if left.size > 0 && right.size > 0
    if left[0] < right[0]
      ans = left.slice!(0)
    else
      ans = right.slice!(0)
    end
    [ans] + merge(left,right)
  else
    if left.size == 0
      return right
    else
      return left
    end
  end
end

def merge_sort(arr)
  binding.pry
  if arr.length < 2
    return arr
  end

  left = arr.slice!(0, arr.size/2)
  right = arr.slice!(0, arr.size)

  left = merge_sort(left)
  right = merge_sort(right)

  merge(left, right)
end

p merge_sort([6, 8, 9, 2, 4, 1, 7, 5, 3])