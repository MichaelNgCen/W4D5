#phase 1
def first_anagrams?(str1,str2)
    str1.split("").permutation.include?(str2.split(""))
end
p first_anagrams?("gizmo", "sally")    #=> false
p first_anagrams?("elvis", "lives")    #=> true



#phase 2   O(n^2)
def second_anagrams?(str1,str2)
    char1 = str1.split("")
    char2 = str2.split("")
    (0...char1.length).each {|i| char2[char2.find_index(char1[i])] = "" if !char2.find_index(char1[i]).nil?}
    char2.join("") == ""
end

p second_anagrams?("gizmo", "sally")    #=> false
p second_anagrams?("elvis", "lives")    #=> true



#phase 3    O(nlogn)
def third_anagrams?(str1,str2)
    char1 = str1.split("").sort
    char2 = str2.split("").sort
    char1 == char2
end


p third_anagrams?("gizmo", "sally")    #=> false
p third_anagrams?("elvis", "lives")    #=> true

# Phase 4 O(n)
def fourth_anagrams?(str1,str2)
    nh = Hash.new(0)
    str1.split("").each {|i| nh[i] +=1}
    str2.split("").each {|j| nh[j] -= 1}
    nh.values.all? {|v| v == 0}
end

p fourth_anagrams?("gizmo", "sally")    #=> false
p fourth_anagrams?("elvis", "lives")    #=> true

        