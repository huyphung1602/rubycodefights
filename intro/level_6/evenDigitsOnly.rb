# Check if all digits of the given integer are even.

# Example

# For n = 248622, the output should be
# evenDigitsOnly(n) = true;
# For n = 642386, the output should be
# evenDigitsOnly(n) = false.

def evenDigitsOnly(n)
    array = n.to_s.split("")
    array.each do |word|
        if word.to_i.odd?
            return false
        end
    end
    
    true
end