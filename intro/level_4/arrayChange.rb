# You are given an array of integers. On each move you are allowed to increase exactly one of its element by one. Find the minimal number of moves required to obtain a strictly increasing sequence from the input.

# Example

# For inputArray = [1, 1, 1], the output should be
# arrayChange(inputArray) = 3.

def arrayChange(inputArray)
    count = 0
    for i in 1..(inputArray.count-1)
        if inputArray[i-1] >= inputArray[i]
            moves = 1 + inputArray[i-1] - inputArray[i]
            inputArray[i] += moves
            count += moves
        end
    end
    
    count
end