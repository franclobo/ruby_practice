=begin
  Given an m x n binary matrix mat, return the distance of the nearest 0 for each cell.

The distance between two adjacent cells is 1.

 

Example 1:


Input: mat = [[0,0,0],[0,1,0],[0,0,0]]
Output: [[0,0,0],[0,1,0],[0,0,0]]
Example 2:


Input: mat = [[0,0,0],[0,1,0],[1,1,1]]
Output: [[0,0,0],[0,1,0],[1,2,1]]
 

Constraints:

m == mat.length
n == mat[i].length
1 <= m, n <= 104
1 <= m * n <= 104
mat[i][j] is either 0 or 1.
There is at least one 0 in mat.
=end

# @param {Integer[][]} mat
# @return {Integer[][]}
def update_matrix(mat)
  m = mat.length
    n = mat[0].length
    queue = []
    visited = Array.new(m) { Array.new(n, false) }
    directions = [[0,1], [0,-1], [1,0], [-1,0]]

    (0...m).each do |i|
        (0...n).each do |j|
            if mat[i][j] == 0
               queue << [i,j]
               visited[i][j] = true
            end
        end
    end

    while !queue.empty?
        cell = queue.shift
        x = cell[0]
        y = cell[1]

        directions.each do |dir|
            row  = x + dir[0]
            col = y + dir[1]

            if row.between?(0, m - 1) && col.between?(0, n - 1) && !visited[row][col]
                mat[row][col] = mat[x][y] + 1
                visited[row][col] = true
                queue << [row, col]
            end
        end
    end
    mat
end