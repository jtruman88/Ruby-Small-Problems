# In the previous exercise, you wrote a method to transpose a 3 x 3 matrix as represented by a ruby Array of Arrays. Matrix transposes aren't limited to 3 x 3 matrices, or even square matrices. Any matrix can be transposed by simply switching columns with rows. Modify your transpose method from the previous exercise so it works with any matrix with at least 1 row and 1 column.

def transpose(matrix)
  columns = matrix[0].length
  new_matrix = []
  columns.times { new_matrix << [] }
  matrix.each_with_index do |row, ind|
    row.each_with_index do |elem, r_ind|
      new_matrix[r_ind][ind] = elem
    end
  end
  new_matrix
end

# Test cases
p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]

=begin

PSUEDO

- define method, transpose, 1 parameter, matrix
  - Each element in the first row, will become the first element in each row.
  - find out how many columns there are. that's how many rows there will be
    columns = matrix[0].length
  - set a new empty matrix with an empty row for each column
    new_matrix = []
    columns.times { new_matrix << [] }
  - for each element in the first row in matrix, will be the first element in each row in new_matrix, same for second, third, etc.
    matrix.each_with_index do |row, ind|
      row.each_with_index do |elem, r_ind|
        new_matrix[r_ind][ind] = elem
      end
    end
  - return new_matrix

=end
