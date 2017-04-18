# Given two strings, find the number of common characters between them.

# Example

# For s1 = "aabcc" and s2 = "adcaa", the output should be
# commonCharacterCount(s1, s2) = 3.

# Strings have 3 common characters - 2 "a"s and 1 "c".

def commonCharacterCount(s1, s2)
    a1 = s1.split("").uniq
    a2 = s2.split("").uniq
    
    b = a1 - a2
    c = a2 - a1
    
    check_a = a1 - b - c
    
    count = 0
    
    check_a.each do |char|
        count_1 = s1.split("").count("#{char}")
        count_2 = s2.split("").count("#{char}")
        
        if count_1 < count_2
            count += count_1
        else
            count += count_2
        end
    end
    
    count
end