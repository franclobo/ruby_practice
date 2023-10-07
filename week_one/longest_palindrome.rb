#Given a string s which consists of lowercase or uppercase letters, return the length of the longest palindrome that can be built with those letters.

#Letters are case sensitive, for example, "Aa" is not considered a palindrome here.



#Example 1:

#Input: s = "abccccdd"
#Output: 7
#Explanation: One longest palindrome that can be built is "dccaccd", whose length is 7.
#Example 2:

#Input: s = "a"
#Output: 1
#Explanation: The longest palindrome that can be built is "a", whose length is 1.
# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  hash = Hash.new(0)
  s.chars.each do |char|
    hash[char] += 1
  end
  count = 0
  hash.each do |k, v|
    if v % 2 == 0
      count += v
    else
      count += v - 1
    end
  end
  count == s.length ? count : count + 1
end
