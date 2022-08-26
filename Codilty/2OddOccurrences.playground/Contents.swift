import UIKit

public func solution(_ A : inout [Int]) -> Int {
    guard A.count != 0 else { return -1 }
    var dictionary = [Int: Int]()
    
    for int in A {
        if let count = dictionary[int] {
            dictionary[int, default: 0] = count + 1
        } else {
            dictionary[int] = 1
        }
    }
    
    for item in dictionary {
        if item.value % 2 == 1 {
            return item.key
        }
    }

    return -1
}

var myArray = [9, 3, 9, 3, 9, 7, 9]
solution(&myArray)


