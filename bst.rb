def bst(arr, target)
  return nil if arr.length == 0
  mid = arr.length / 2
  if arr[mid] == target
    return mid
  elsif arr[mid] > target
    return bst(arr[0...mid], target)
  else
    search_res = bst(arr[mid+1..-1], target)
    search_res.nil? ? nil : search_res + 1 + mid
  end
end
