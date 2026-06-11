class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        if nums.isEmpty {
            return false
        }

        var dict = [Int:Int]()
        for (index,value) in nums.enumerated() {
            if let dictValue = dict[value] {
                return true
            }
            dict[value] = index
        }
        return false
    }
}
