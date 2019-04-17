# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

=begin
Numerical Score Letter	Grade
90 <= score <= 100	     'A'
80 <= score < 90	       'B'
70 <= score < 80	       'C'
60 <= score < 70	       'D'
0 <= score < 60	         'F'
=end

GRADES = {
  A: (90..100).to_a,
  B: (80..89).to_a,
  C: (70..79).to_a,
  D: (60..69).to_a,
  F: (0..59).to_a
}

def get_grade(*grades)
  average = grades.inject(:+) / grades.length
  GRADES.each do |letter, score|
    return letter.to_s if score.include?(average)
  end
end

# test cases
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
