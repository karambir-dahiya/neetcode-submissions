class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.isEmpty {
            return []
        }

        var dict = [Int:Int]()

        for(index,value) in nums.enumerated() {
            let sum = target - value
            if let dictValue = dict[value] {
                return [dictValue,index]
            }
            dict[sum] = index
            print(dict)
        }
        return []

    }
}
