def binary_search(array, target)
  # return index where target appears in array
  return nil if array.length < 1
  midpt = array.length / 2
  if array[midpt] > target
    return binary_search(array[0...midpt], target)
  elsif array[midpt] == target
     return midpt
  else
    return midpt + 1 + binary_search(array[midpt + 1..-1], ta2rget)
    search_res = binary_search(array.drop(midpt + 1), target)
    search_res.nil? ? nil : mid + 1 + search_res
  end
end

def peak(array)
  mid = array.length / 2
  if array.take(2).any? {|el| el > array[mid]}
    peak(array.take(mid))
  elsif array.drop(2).an
  end
end
