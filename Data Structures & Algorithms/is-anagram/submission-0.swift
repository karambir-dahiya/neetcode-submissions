class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if (s.count != t.count) {
            return false
        }
        var dict = [Character:Int]()
        for char in s {
            dict[char, default:0] += 1
        }

        for char in t {
            dict[char,default:0] -= 1

            if dict[char, default:0] < 0 {
                return false
            }
        }
        return true
    }
}
