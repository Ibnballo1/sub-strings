# Given an integer array `nums`, create a function that moves all `0`'s to the end of it while maintaining the relative order of the non-zero elements. Note that you must do this in place without making a copy of the array.

# **Example 1:**
# Input: nums = [0,1,0,3,12]
# Output: [1,3,12,0,0]

# Example 2:
# Input: nums = [0]
# Output: [0]
def move_zeros(nums)
  current_position = 0

  nums.each do |num|
    if num != 0
      nums[current_position] = num
      current_position += 1
    end
  end
  while current_position < nums.length
    nums[current_position] = 0
    current_position += 1
  end
  nums
end

p move_zeros([0,1,0,3,12]) # ==> [1,3,12,0,0]
p move_zeros([0]) # ==> [0]