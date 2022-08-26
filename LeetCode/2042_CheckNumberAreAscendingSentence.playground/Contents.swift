class Solution {
    func areNumbersAscending(_ s: String) -> Bool {
        var array = [Int]()
        for word in s.split(separator: " "){
            let last = array.last ?? 0
            
            if let number = Int(word) {
                guard last < number else { return false }
                array.append(number)
            }
        }
        
        return true
    }
}
