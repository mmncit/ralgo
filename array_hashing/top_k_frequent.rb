# https://leetcode.com/problems/top-k-frequent-elements/

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  return [] if nums.empty?

  hash = {}
  nums.each do |num|
    hash[num] ||= 0
    hash[num] += 1
  end

  hash.sort_by { |_, v| -v }.map(&:first).first(k)
end
