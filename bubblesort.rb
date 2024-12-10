def bubble_sort(array)
    until array.each_cons(2).all? { |first, second| first < second }
        loop do 
            (0...array.length - 1).each do |i|
                if array[i] > array[i + 1]
                    array[i], array[i + 1] = array[i + 1], array[i]
                end
            end
        end
    end
end
bubble_sort([4,3,78,2,0,2])