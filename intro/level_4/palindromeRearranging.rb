# Given a string, find out if its characters can be rearranged to form a palindrome.

# Example

# For inputString = "aabb", the output should be
# palindromeRearranging(inputString) = true.

# We can rearrange "aabb" to make "abba", which is a palindrome.

def palindromeRearranging(inputString)
    alphabet = ("a".."z").to_a
    
    numberArray = Array.new(alphabet.count)
    
    for i in 0..(alphabet.count - 1)
        numberArray[i] = inputString.count("#{alphabet[i]}")
    end
    
    count = 0
    
    numberArray.each do |number|
        if (number%2) != 0
            count += 1
        end
    end
    
    if count == 1
        if inputString.length%2 != 0
            true
        else
            false
        end
    elsif count == 0
        true
    else
        false
    end
end