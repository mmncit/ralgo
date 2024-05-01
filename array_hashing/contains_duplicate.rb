# https://leetcode.com/problems/contains-duplicate/

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  return false if nums.empty?

  nums.uniq.size != nums.size
end

# Time complexity: O(n)
# Space complexity: O(n)
