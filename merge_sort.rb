def merge_sort(arr)
  if arr.length <= 1 
    return arr
  else  
    mid = arr.length / 2
    left = merge_sort(arr[0...mid])
    right = merge_sort(arr[mid..-1])

    sorted = []
    until left.empty? || right.empty?
        sorted << (left.first <= right.first ? left.shift : right.shift)
    end

    sorted + left + right
  end
end

merge_sort([3, 2, 1, 13, 8, 5, 0, 1]) #should return [0, 1, 1, 2, 3, 5, 8, 13]
merge_sort([105, 79, 100, 110]) #should return [79, 100, 105, 110]