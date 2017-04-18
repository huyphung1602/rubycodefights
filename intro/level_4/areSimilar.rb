# Two arrays are called similar if one can be obtained from another by swapping at most one pair of elements in one of the arrays.

# Given two arrays, check whether they are similar.

# Example

# For A = [1, 2, 3] and B = [1, 2, 3], the output should be
# areSimilar(A, B) = true.

# The arrays are equal, no need to swap any elements.

# For A = [1, 2, 3] and B = [2, 1, 3], the output should be
# areSimilar(A, B) = true.

# We can obtain B from A by swapping 2 and 1 in B.

# For A = [1, 2, 2] and B = [2, 1, 1], the output should be
# areSimilar(A, B) = false.

# Any swap of any two elements either in A or in B won't make A and B equal.

def areSimilar(a, b)
    count = 0
    
    for i in 0..(a.count-1)
        if a[i] != b[i]
            count += 1
        end
    end
    
    if count < 3
        if a.sort == b.sort
            return true
        end
    end
    
    false
end