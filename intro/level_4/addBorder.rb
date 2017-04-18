# Given a rectangular matrix of characters, add a border of asterisks(*) to it.

# Example

# For

# picture = ["abc",
#            "ded"]
# the output should be

# addBorder(picture) = ["*****",
#                       "*abc*",
#                       "*ded*",
#                       "*****"]

def addBorder(picture)
    border = Array.new
    
    for i in 0..(picture[0].length+1)
        border << "*"
    end
    
    border = border.join("")
    
    finalArray = Array.new
    
    for i in 0..(picture.count + 1)
        if (i == 0) or (i == (picture.count + 1))
            finalArray << border
        else
            picture[i-1] = "*#{picture[i-1]}*"
            finalArray << picture[i-1]
        end
    end
    
    finalArray
end