class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        if numbers.isEmpty {
            return []
        }

        var dict = [Int:Int]()

        for (index, value) in numbers.enumerated() {
            if let dictValue = dict[value] {
                return [dictValue + 1, index + 1]
            }
            dict[target - value] = index
        }
        return []
    }
}
