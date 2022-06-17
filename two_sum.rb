#O(n^2)
def two_sum(arr, target)
    arr.each_with_index do |n, i|
        arr.each_with_index do |m, j|
           return true if n + m == target && i != j
        end
    end
    false
end 

# p two_sum([0,1,5,7], 10 )

#O(nlog(n))
def sort_two_sum(arr, target)
    arr = arr.sort
    l = 0
    r = arr.length
    while l < r 
        return true if (arr[l] + arr[r-1]) == target
        r -= 1 if r != 0
        if r == 0
            r = arr.length
            l += 1
        end
    end
    false
end

# p sort_two_sum([0,1,5,7], 6 )

#O(n)
def hash_two_sum(arr, target)
    nh = Hash.new(0)
    arr.each do |i|
        nh[target-i] = i if !nh.has_key?(i)
        return true if nh.has_key?(i) && nh[i] != i
    end
    false
end

p hash_two_sum([0,1,5,7], 10 )