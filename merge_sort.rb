def merge_sort(arr)
  if arr.length == 1
    return arr
  else
    arr.each_slice((arr.size / 2.0).ceil).to_a
    sort left half
    sort right half
    merge
  end
end

merge_sort([3, 2, 1, 13, 8, 5, 0, 1]) #should return [0, 1, 1, 2, 3, 5, 8, 13]
merge_sort([105, 79, 100, 110]) #should return [79, 100, 105, 110]