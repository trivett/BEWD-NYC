def my_max(array)

    max = 0

    array.each do |num| 
        if num > max
            max = num
        end
    end
    
    return max

end

arr = [1243, 652, 73245, 341, 72434]
puts my_max(arr)
