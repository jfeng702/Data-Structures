def quicksort(arr)
  return arr if arr.length < 2
  pivot = arr.first
  lower = arr[1..-1].select {|el| el < pivot}
  higher = arr[1..-1].select {|el| el >= pivot}
  quicksort(lower) + [pivot] + quicksort(higher)
end

p quicksort([5,4,3,6,6,1])
