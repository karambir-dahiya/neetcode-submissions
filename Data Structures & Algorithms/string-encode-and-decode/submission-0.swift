class Solution {

    func encode(_ strs: [String]) -> String {
        var encoded = ""
        for str in strs {
            encoded += "\(str.count)#\(str)"
        }
        return encoded
    }

    func decode(_ str: String) -> [String] {
       var result: [String] = []
        let chars = Array(str)
        var i = 0
        while i < chars.count {
            var j = i
            while chars[j] != "#" {
                j += 1
            }
            let length = Int(String(chars[i..<j]))!
            j += 1

            let str = String(chars[j..<(j + length)])
            result.append(str)
            i = j + length

        }
        return result
    }
}
