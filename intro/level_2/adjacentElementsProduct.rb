# Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.

# Example

# For inputArray = [3, 6, -2, -5, 7, 3], the output should be
# adjacentElementsProduct(inputArray) = 21.

# 7 and 3 produce the largest product.

def adjacentElementsProduct(inputArray)
    resultArray = Array.new
    for i in 1..(inputArray.count - 1)
        resultArray << inputArray[i-1] * inputArray[i]  
    end
    resultArray.max
end