=begin
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
Every close bracket has a corresponding open bracket of the same type.


Example 1:

Input: s = "()"
Output: true
=end

# @param {String} s
# @return {Boolean}
def is_valid(s)
  hash = {
    "(" => ")",
    "[" => "]",
    "{" => "}"
  }
  stack = []
  s.each_char do |char|
    if hash[char]
      stack << char
    else
      return false if stack.empty? || hash[stack.pop] != char
    end
  end
  stack.empty?
end
