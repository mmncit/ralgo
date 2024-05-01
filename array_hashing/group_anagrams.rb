# https://leetcode.com/problems/group-anagrams/

# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  return [] if strs.empty?

  hash = {}
  strs.each do |str|
    key = str.chars.sort.join
    hash[key] ||= []
    hash[key] << str
  end

  hash.values
end
