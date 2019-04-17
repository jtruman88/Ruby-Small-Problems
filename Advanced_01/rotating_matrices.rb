=begin
As we saw in the previous exercises, a matrix can be represented in ruby by an Array of Arrays. For example:

1  5  8
4  7  2
3  9  6
can be described by the Array of Arrays:

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
A 90-degree rotation of a matrix produces a new matrix in which each side of the matrix is rotated clockwise by 90 degrees. For example, the 90-degree rotation of the matrix shown above is:

3  4  1
9  7  5
6  2  8
A 90 degree rotation of a non-square matrix is similar. For example, the rotation of:

3  4  1
9  7  5
is:

9  3
7  4
5  1
Write a method that takes an arbitrary matrix and rotates it 90 degrees clockwise as shown above.
=end

# Further Exploration - Can you modify your solution to perform 90, 180, 270, and 360 degree rotations based on an argument?

# Initial Solution
def rotate90(matrix)
  columns = matrix[0].length
  new_matrix = []
  columns.times { new_matrix << [] }
  matrix.each_with_index do |row, ind|
    row.each_with_index do |elem, r_ind|
      new_matrix[r_ind].unshift(elem)
    end
  end
  new_matrix
end

# Further Exploration - Can you modify your solution to perform 90, 180, 270, and 360 degree rotations based on an argument?

def rotate(matrix, degrees)
  rotations = degrees / 90 % 4
  return matrix if rotations == 0
  new_matrix = rotate90(matrix)
  count = 1
  while count < rotations
    new_matrix = rotate90(new_matrix)
    count += 1
  end
  new_matrix
end

# Test cases
matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90((matrix2)))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
puts
matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate(matrix1, 180)
new_matrix2 = rotate(matrix2, 270)
new_matrix3 = rotate(matrix1, 360)

p new_matrix1 == [[6, 9, 3], [2, 7, 4], [8, 5, 1]]
p new_matrix2 == [[2, 8], [4, 0], [7, 1], [3, 5]]
p new_matrix3 == matrix1
