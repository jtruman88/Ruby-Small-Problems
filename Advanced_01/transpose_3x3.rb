=begin
A 3 x 3 matrix can be represented by an Array of Arrays in which the main Array and all of the sub-Arrays has 3 elements. For example:
1  5  8
4  7  2
3  9  6
can be described by the Array of Arrays:

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

An Array of Arrays is sometimes called nested arrays because each of the inner Arrays is nested inside an outer Array.

To access an element in matrix, you use Array#[] with both the row index and column index. So, in this case, matrix[0][2] is 8, and matrix[2][1] is 9. An entire row in the matrix can be referenced by just using one index: matrix[1] is the row (an Array) [4, 7, 2]. Unfortunately, there's no convenient notation for accessing an entire column.
The transpose of a 3 x 3 matrix is the matrix that results from exchanging the columns and rows of the original matrix. For example, the transposition of the array shown above is:

1  4  3
5  7  9
8  2  6
Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of the original matrix. Note that there is a Array#transpose method that does this -- you may not use it for this exercise. You also are not allowed to use the Matrix class from the standard library. Your task is to do this yourself.

Take care not to modify the original matrix: you must produce a new matrix and leave the original matrix unchanged.
=end

# Initial solution
def transpose(matrix)
  columns = matrix[0].length
  new_matrix = []
  columns.times { new_matrix << [] }
  new_matrix.each_with_index do |_, n_ind|
    matrix.each_with_index do |_, ind|
      new_matrix[ind][n_ind] = matrix[n_ind][ind]
    end
  end
  new_matrix
end

# Further Exploration - Write a transpose! method that transposes a matrix in place. The obvious solution is to reuse transpose from above, then copy the results back into the array specified by the argument. For this method, don't use this approach; write a method from scratch that does the in-place transpose.

def transpose!(matrix)
  copy_matrix = []
  matrix.each_with_index { |row, ind| copy_matrix[ind] = row }
  matrix[0].length.times { matrix.unshift([]) }
  copy_matrix.length.times { matrix.pop }
  matrix.each_with_index do |_, n_ind|
    copy_matrix.each_with_index do |_, ind|
      matrix[ind] << copy_matrix[n_ind][ind]
    end
  end
end

# Test cases
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
puts
p transpose!(matrix)
p matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]

=begin

psuedo

- define method, transpose, 1 parameter, matrix
  - Each element in the first row, will become the first element in each row.
  - find out how many columns there are. that's how many rows there will be
    columns = matrix[0].length
  - set a new empty matrix with an empty row for each column
    new_matrix = []
    columns.times { new_matrix << [] }
  - for each row in new_matrix, the first row in matrix will be the first element in each row in new_matrix, second row will be the secon elemts, etc.
    new_matrix.each_with_index do |n_row, n_ind|
      matrix.each_with_index do |row, ind|
        new_matrix[row][n_row] = matrix[n_ind][ind]
      end
    end
  - return the new matrix
    new_matrix

- define method, transpose!, 1 parameter, matrix
  - Need to change the nested array in place. Each element in the first array, will be come the beginning of each row after it is mutated. Same for second, third, etc.
  - Add three empty arrays to beinning of matrix.
  - have a temp storage matrix
  - clear the current matrix and add empty arrays equal to the number of columns there will be

=end
