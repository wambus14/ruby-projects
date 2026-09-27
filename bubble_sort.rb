# frozen_string_literal: true

require 'pry-byebug'
def bubble_sort(nums)
  loop do
    # passes through once
    (nums.length - 1).times do |i|
      print "#{nums}\n"
      nums[i], nums[i + 1] = nums[i + 1], nums[i] if nums[i] > nums[i + 1]
    end
    # creates array with ones that are sorted to check against
    temp = nums.select.with_index do |num, index|
      num == nums[-1] ||
        nums[index] <= nums[(index + 1)]
    end
    # print "#{nums}\n"
    return if temp.length == nums.length
  end
end
bubble_sort([5, 9, 23, 4, 37, 27, 4, 3, 2, 1])
