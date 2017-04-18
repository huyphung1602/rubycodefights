# Ticket numbers usually consist of an even number of digits. A ticket number is considered lucky if the sum of the first half of the digits is equal to the sum of the second half.

# Given a ticket number n, determine if it's lucky or not.

# Example

# For n = 1230, the output should be
# isLucky(n) = true;
# For n = 239017, the output should be
# isLucky(n) = false.

def isLucky(n)
    a = n.to_s.split("")
    full = a.count - 1
    half = a.count/2 - 1
    
    total_1 = 0
    total_2 = 0
    
    for i in 0..full
        if i > half
            total_2 += a[i].to_i
        else
            total_1 += a[i].to_i
        end
    end
    
    if total_1 == total_2
        true
    else
        false
    end
end