class Solution {
    func countWords(_ words1: [String], _ words2: [String]) -> Int {
        var result = 0
        var results1 = [String: Int]()
        var results2 = [String: Int]()
        
        words1.forEach { results1[$0, default: 0] += 1 }
        words2.forEach { results2[$0, default: 0] += 1 }
      
        let filtered1 = results1.filter { $0.value == 1 }.keys
        let filtered2 = results2.filter { $0.value == 1 }.keys
        
        filtered1.forEach { if filtered2.contains($0) { result += 1 } }
        return result
    }
}
