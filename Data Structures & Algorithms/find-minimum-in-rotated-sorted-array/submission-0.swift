class Solution {
    func findMin(_ nums: [Int]) -> Int {
        if nums.isEmpty {
            return -1
        }
        var left = 0
        var right = nums.count - 1
        var min = Int.max

        while(left <= right) {
            if(nums[left] < min){
                min = nums[left]
                left += 1
            } else if(nums[right] < min) {
                min = nums[right]
                right -= 1
            } else {
                left += 1
                right -= 1
            }
        }
        return min

    }
}
