def pair_sum(arr, x)
  left = 0
  right = arr.length - 1
  diff = x - arr.last
  result = []
  while left < right
    if (arr[left] + arr[right] - x).abs < diff
      diff = (arr[left] + arr[right] - x).abs
      result = [arr[left], arr[right]]
    elsif arr[left] + arr[right] < x
      left += 1
    else
      right -= 1
    end
  end
  return result
end
