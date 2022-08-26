class Solution {
    func countGoodSubstrings(_ s: String) -> Int {
        guard s.count > 2 else { return 0 }
        let array = Array(s)
        var count = 0
        
        for index in 0 ..< array.count - 2 {
            if array[index] != array[index + 1] &&
                array[index + 1] != array[index + 2] &&
                array[index] != array[index + 2] {
                count += 1
            }
        }
        
        return count
    }
}
