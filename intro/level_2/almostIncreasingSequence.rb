# Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence by removing no more than one element from the array.

# Example

# For sequence = [1, 3, 2, 1], the output should be
# almostIncreasingSequence(sequence) = false;

# There is no one element in this array that can be removed in order to get a strictly increasing sequence.

# For sequence = [1, 3, 2], the output should be
# almostIncreasingSequence(sequence) = true.

# You can remove 3 from the array to get the strictly increasing sequence [1, 2]. Alternately, you can remove 2 to get the strictly increasing sequence [1, 3].

def almostIncreasingSequence(sequence)
    count = 0
    
    if (sequence.count - sequence.uniq.count) > 1
        return false
    end
    
    for i in 1..(sequence.count - 2)
        if sequence[i-1] > sequence[i]
            count += 1
        end
    end
    
    if count == 0
        return true
    end
    
    count_1 = 0
    
    for i in 2..(sequence.count - 1)
        count_2 = 0
        if sequence[i-1] > sequence[i]
            count_2 += 1
        end
        
        if sequence[i-2] > sequence[i]
            count_2 += 1
        end
        
        if (count_2 > 1)
            return false
        end
    end
    
    for i in 1..(sequence.count - 1)
       if sequence[i-1] > sequence[i]
            count_1 += 1
        end
    end
    
    if count_1 > 1
        false
    else
        true
    end
end