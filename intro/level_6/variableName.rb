# Correct variable names consist only of Latin letters, digits and underscores and they can't start with a digit.

# Check if the given string is a correct variable name.

# Example

# For name = "var_1__Int", the output should be
# variableName(name) = true;
# For name = "qq-q", the output should be
# variableName(name) = false;
# For name = "2w2", the output should be
# variableName(name) = false.

def variableName(name)
    name = name.downcase
    a1 = ("a".."z").to_a + ("0".."9").to_a + ["_"]
    a2 = ("a".."z").to_a + ["_"]
    
    for i in 0..(name.length - 1)
        if i == 0
            if a2.include?(name[i]) == false
                return false
            end
        else
            if a1.include?(name[i]) == false
                return false
            end
        end
    end
    
    true
end