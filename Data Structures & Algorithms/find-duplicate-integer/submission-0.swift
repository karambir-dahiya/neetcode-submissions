class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        if nums.isEmpty {
            return -1
        }
        var dict = [Int:Int]()
        for num in nums {
            if let value = dict[num] {
                return value
            }
            dict[num] = num
        }
        return -1
    }
}
