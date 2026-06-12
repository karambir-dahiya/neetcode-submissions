class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        if nums.isEmpty {
            return -1
        }
        var left = 0
        var right = nums.count - 1

        while(left <= right) {
            if(nums[left] == target) {
                return left
            } else if(nums[right] == target) {
                return right
            } else {
                left += 1
                right -= 1
            }
        }
        return -1
    }
}
