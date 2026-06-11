class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        if nums.isEmpty {
            return []
        }
        var result = [Int]()
        var product = 1
        for (index, value) in nums.enumerated() {
            for i in 0..<nums.count {
                if index == i {
                    continue
                }
                product = product * nums[i] 
            }
            result.append(product)
            product = 1
        }
        return result
    }
}
