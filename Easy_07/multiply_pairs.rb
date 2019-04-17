# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value. You may assume that neither argument is an empty Array.

def multiply_all_pairs(nums1, nums2)
  products = []
  nums1.each do |num1|
    nums2.each do |num2|
      products << num1 * num2
    end
  end
  products.sort
end

# Test Cases
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
