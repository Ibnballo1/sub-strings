def move_zeroes(nums)
    non_zero_count = 0
  
    # Iterate through the array and swap non-zero elements to the front
    nums.each_with_index do |num, i|
      if num != 0
        nums[i], nums[non_zero_count] = nums[non_zero_count], nums[i]
        non_zero_count += 1
      end
    end
  
    nums # Return the modified array
  end
  
  p move_zeroes([0,1,0,3,12])
  p move_zeroes([0])
  p move_zeroes([1,0,6,5])