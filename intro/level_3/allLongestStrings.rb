# Given an array of strings, return another array containing all of its longest strings.

# Example

# For inputArray = ["aba", "aa", "ad", "vcd", "aba"], the output should be
# allLongestStrings(inputArray) = ["aba", "vcd", "aba"].

def allLongestStrings(inputArray)
  maxLenght = 1
  inputArray.each do |word|
    if word.length > maxLenght
      maxLenght = word.length
    end
  end
  
  finalArray = Array.new
  inputArray.each do |word|
    if word.length == maxLenght
      finalArray << word
    end
  end
  
  finalArray
end