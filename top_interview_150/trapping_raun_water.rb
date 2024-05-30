=begin
Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.



Example 1:


Input: height = [0,1,0,2,1,0,1,3,2,1,2,1]
Output: 6
Explanation: The above elevation map (black section) is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped.
Example 2:

Input: height = [4,2,0,3,2,5]
Output: 9


Constraints:

n == height.length
1 <= n <= 2 * 104
0 <= height[i] <= 105
=end
# @param {Integer[]} height
# @return {Integer}
def trap(height)
  n = height.length
  return 0 if n == 0

  left_max = Array.new(n, 0)
  right_max = Array.new(n, 0)

  left_max[0] = height[0]
  (1...n).each do |i|
    left_max[i] = [left_max[i - 1], height[i]].max
  end

  right_max[n - 1] = height[n - 1]
  (n - 2).downto(0).each do |i|
    right_max[i] = [right_max[i + 1], height[i]].max
  end

  water = 0
  (0...n).each do |i|
    water += [left_max[i], right_max[i]].min - height[i]
  end
  water
end
