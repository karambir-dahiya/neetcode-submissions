class Solution {
    func isPalindrome(_ s: String) -> Bool {

        let charArray = Array<Character>(s.lowercased());
        if (charArray.count == 0) {
            return false
        }
        var startIndex = 0
        var endIndex = s.count - 1

        while(startIndex < endIndex) {
             while startIndex < endIndex && !charArray[startIndex].isLetter && !charArray[startIndex].isNumber {
                startIndex += 1
            }
            while startIndex < endIndex && !charArray[endIndex].isLetter && !charArray[endIndex].isNumber {
            endIndex -= 1
            }
            if charArray[startIndex] != charArray[endIndex] {
                return false
            }
            startIndex += 1
            endIndex -= 1
        }
        return true
    }
}
