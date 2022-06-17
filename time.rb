#phase 1 O(n^2)
def my_min(array)
    (0...array.length).each do |i|
        return i if array.all? {|n| n >= i}
    end
end


#phase 2 O(n)
def my_min(array)
    cur_min = array[0]
    array.each do |i|
        cur_min = i if cur_min > i 
    end
    cur_min
end


#phase 1   O(n^2)
# def lcs(array)
#     na = []
#     (0...array.length).each do |i|
#         (i...array.length).each do |j|
#             na << array[i..j].sum
#         end
#     end
#     na.max
# end

# def lcs(array)
#     i, j, na =0, 0, []
#     while i < array.length
#         na << array[i..j].sum
#         j += 1 if j != array.length
#         if j == array.length
#             j = 0
#             i += 1
#         end
#         break if i == array.length
#     end
#     na.max
# end

def lcs(array)
    l, c = array[0], array[0]
    (1...array.length).each do |i|
        c = 0 if c < 0
        c += array[i]
        l = c if l < c
    end
    l
end 

p lcs([2,3,-6,7,-6,7])



