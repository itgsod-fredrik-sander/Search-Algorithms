# LINEARSEARCH
#
# Searches for an element in a sorted array.
#
# array - The array to be sorted.
# value - The value to be searched for.
#
# Examples
#
#    linear_search([1, 2, 3, 4, 5], 3)
#    # => 2
#
#    linear_search([1, 2, 3, 4, 5], 91)
#    # => false
#
# Returns the index of the found element or false if not found

def linear_search(array, value)
  array.each_with_index do |content, i|
    if content == value
      return i
    end  
  end

  return false 
end

# BINARY SEARCH
#
# Searches for an element in a sorted array.
#
# array - The array to be sorted.
# value - The value to be searched for.
# start_pos - Start index of the search.
# end_pos - End index of the search.
#
# Examples
#
#    binary_search([1, 2, 3, 4, 5], 3, 0, 4)
#    # => 2
#
#    binary_search([1, 2, 3, 4, 5], 91, 0, 4)
#    # => false
#
# Returns the index of the found element or false if not found

def binary_search(array, value, start_index, end_index)
  if start_index <= end_index
    mid_index = (start_index+end_index)/2

    if value == array[mid_index]
      return mid_index
    elsif value < array[mid_index]
      return binary_search(array, value, start_index, mid_index-1)
    elsif value > array[mid_index]
      return binary_search(array, value, mid_index+1, end_index)
    end
  end

  return false
end