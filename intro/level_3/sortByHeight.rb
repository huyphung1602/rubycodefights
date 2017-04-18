# Some people are standing in a row in a park. There are trees between them which cannot be moved. Your task is to rearrange the people by their heights in a non-descending order without moving the trees.

# Example

# For a = [-1, 150, 190, 170, -1, -1, 160, 180], the output should be
# sortByHeight(a) = [-1, 150, 160, 170, -1, -1, 180, 190].

def sortByHeight(a)
    treeArray = Array.new
    
    b = a.sort
    b = b.select {|item| item != -1}
    
    for i in 0..(a.count-1)
        if a[i] != -1
            num = b.shift
            a[i] = num
        end
    end
    
    a
end