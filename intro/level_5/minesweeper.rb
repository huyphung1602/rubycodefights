# In the popular Minesweeper game you have a board with some mines and those cells that don't contain a mine have a number in it that indicates the total number of mines in the neighboring cells. Starting off with some arrangement of mines we want to create a Minesweeper game setup.

# Example

# For

# matrix = [[true, false, false],
#           [false, true, false],
#           [false, false, false]]
# the output should be

# minesweeper(matrix) = [[1, 2, 1],
#                        [2, 1, 1],
#                        [1, 1, 1]]

def minesweeper(matrix)
    height = matrix.count - 1
    width = matrix[0].count - 1

    finalArray = Array.new
    
    for i in 0..height
        temp = Array.new
        for j in 0..width
            temp << check33(matrix, j, i)
        end
        finalArray << temp
    end
    finalArray
end

def check33(matrix, x, y)
    total = 0
    if (y-1) >= 0
        if matrix[y-1][x-1] and (x-1) >= 0
            puts "one"
            total += 1
        end
        if matrix[y-1][x]
            puts "two"
            total += 1
        end
        if matrix[y-1][x+1]
            puts "three"
            total += 1
        end
    end
    
    if matrix[y][x-1]  and (x-1) >= 0
        puts "four"
        total += 1
    end
    if matrix[y][x+1]
        puts "six"
        total += 1
    end
    
    if matrix[y+1]
        if matrix[y+1][x-1] and (x-1) >= 0
            puts "seven"
            total += 1
        end
        if matrix[y+1][x]
            puts "eight"
            total += 1
        end
        if matrix[y+1][x+1]
            puts "nine"
            total += 1
        end
    end
    
    total
end