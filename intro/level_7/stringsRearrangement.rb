# Given an array of equal-length strings, check if it is possible to rearrange the strings in such a way that after the rearrangement the strings at consecutive positions would differ by exactly one character.

# Example

# For inputArray = ["aba", "bbb", "bab"], the output should be
# stringsRearrangement(inputArray) = false;

# All rearrangements don't satisfy the description condition.

# For inputArray = ["ab", "bb", "aa"], the output should be
# stringsRearrangement(inputArray) = true.

# Strings can be rearranged in the following way: "aa", "ab", "bb".

def stringsRearrangement(inputArray)
    p = inputArray.permutation.to_a
    result = Array.new
    
    p.each do |inputA|
        result << checkDiffByOne(inputA)
    end
    
    result.count(true)
end

def checkDiffByOne(inputArray)
    for i in 1..(inputArray.count-1)
        count = 0
        
        for j in 0..(inputArray[i].length-1)
            if inputArray[i][j] != inputArray[i-1][j]
                count += 1
            end
        end
        
        if count != 1
            return false
        end
    end
    
    true
end