# You have a string s that consists of English letters, punctuation marks, whitespace characters, and brackets. It is guaranteed that the parentheses in s form a regular bracket sequence.

# Your task is to reverse the strings contained in each pair of matching parentheses, starting from the innermost pair. The results string should not contain any parentheses.

# Example

# For string s = "a(bc)de", the output should be
# reverseParentheses(s) = "acbde".

def reverseParentheses(s)
    array = s.split("")

    checkBegin = Array.new
    
    for i in 0..(array.count-1)
        if array[i] == "("
            checkBegin << i
        elsif array[i] == ")"
            theBegin = checkBegin.pop
            theEnd = i
            s[(theBegin+1)..(theEnd-1)] = s[(theBegin+1)..(theEnd-1)].reverse
        end
    end
    
    s = s.gsub('(', "").gsub(')', "")
    s
end