# Given an array of integers, find the maximal absolute difference between any two of its adjacent elements.

# Example

# For inputArray = [2, 4, 1, 0], the output should be
# arrayMaximalAdjacentDifference(inputArray) = 3

def arrayMaximalAdjacentDifference(inputArray)
    max = 0
    
    for i in 1..(inputArray.count - 1)
        value = inputArray[i] - inputArray[i-1]
        if value < 0
            value = - value
        end
        if value > max
            max = value
        end
    end
    
    max
end