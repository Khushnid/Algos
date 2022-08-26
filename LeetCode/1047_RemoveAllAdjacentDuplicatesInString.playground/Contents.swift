import Foundation

class Solution {
    func removeDuplicates(_ s: String) -> String {
        var array = [Character]()
        
        s.forEach {
            if array.last == $0 {
                array.removeLast()
            } else {
                array.append($0)
            }
        }
        
        return String(array)
    }
}
