# https://leetcode.com/problems/valid-anagram/

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.size != t.size

  s.chars.sort == t.chars.sort
end
