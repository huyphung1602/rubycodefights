# Given two cells on the standard chess board, determine whether they have the same color or not.

# Example

# For cell1 = "A1" and cell2 = "C3", the output should be
# chessBoardCellColor(cell1, cell2) = true.

# For cell1 = "A1" and cell2 = "H3", the output should be
# chessBoardCellColor(cell1, cell2) = false.


def chessBoardCellColor(cell1, cell2)
    alpha = ("A".."H").to_a
    h = {}
    
    count = 1
    alpha.each do |letter|
        h[letter] = count
        count += 1
    end
    
    if checkCell(h, cell1) == checkCell(h, cell2)
        true
    else
        false
    end
end

def checkCell(h, cell)
    a = cell.split("")
    
    num1 = h[a[0]]
    num2 = a[1].to_i
    
    delta = (num1 - num2).abs
    
    if delta.even?
        "dark"
    else
        "light"
    end
end