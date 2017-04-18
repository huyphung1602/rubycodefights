# You are given an array of integers representing coordinates of obstacles situated on a straight line.

# Assume that you are jumping from the point with coordinate 0 to the right. You are allowed only to make jumps of the same length represented by some integer.

# Find the minimal length of the jump enough to avoid all the obstacles.

# Example

# For inputArray = [5, 3, 6, 7, 9], the output should be
# avoidObstacles(inputArray) = 4.

def avoidObstacles(inputArray)
    jump_range = 1
    flag = 0
    
    while flag == 0
        for i in 0..(inputArray.count - 1)
            if inputArray[i]%jump_range == 0
                jump_range += 1
                break
            end
            if i == (inputArray.count - 1)
                flag = 1
            end
        end
    end
    jump_range
end