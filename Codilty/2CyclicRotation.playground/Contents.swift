import Foundation

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    guard !A.isEmpty else { return A }
    var myArray = [Int]()
   
    for index in 0 ... A.count - 1 {
        myArray.append(A[(A.count - K % A.count + index) % (A.count)])
    }
    
    return myArray
}

var array = [4,5,6,7,8]
solution(&array, 3)
