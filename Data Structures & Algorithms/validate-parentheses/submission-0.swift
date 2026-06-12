class Solution {
    func isValid(_ s: String) -> Bool {
        if s.isEmpty {
            return false
        }
        var stack = [Character]()
        var pairsDict:[Character:Character] = [")":"(", "}":"{", "]":"["]
        for char in s {
            if(char == "{" || char == "(" || char == "[") {
                stack.append(char);
            } else {
                guard let lastComponent = stack.popLast() else {
                    return false
                }

                if(pairsDict[char] != lastComponent) {
                    return false
                }
            }
        }
        return stack.isEmpty
    }
}
