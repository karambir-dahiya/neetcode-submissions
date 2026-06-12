class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        if heights.isEmpty {
            return -1
        }
        var left = 0
        var right = heights.count - 1
        var maxArea = 0

        while(left < right) {
            let width = right - left
            let currentHeight = min(heights[left], heights[right])

            let area = width * currentHeight
            maxArea = max(maxArea , area)

            if(heights[left] < heights[right]) {
                left += 1
            }  else {
                right -= 1
            }
        }
        return maxArea
    }
}
