# Given a string, replace each its character by the next one in the English alphabet (z would be replaced by a).

# Example

# For inputString = "crazy", the output should be
# alphabeticShift(inputString) = "dsbaz".

def alphabeticShift(inputString)
    alpha = ("a".."z").to_a + ["a"]
    array = inputString.split("")
    
    for i in 0..(array.count-1)
        array[i] = alpha[alpha.index(array[i])+1]
    end
    array.join("")
end