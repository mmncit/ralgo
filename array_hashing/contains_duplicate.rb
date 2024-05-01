# https://leetcode.com/problems/contains-duplicate/

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  return false if nums.empty?

  nums.uniq.size != nums.size
end

def contains_duplicate_using_hash(nums)
  return false if nums.empty?

  hash = {}
  nums.each do |num|
    return true if hash[num]

    hash[num] = true
  end

  false
end

# Time complexity: O(n)
# Space complexity: O(n)
