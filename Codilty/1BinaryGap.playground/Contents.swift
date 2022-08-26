import UIKit

public func solution(_ N : Int) -> Int {
    var startedWithOne = false
    var maxLength = 0
    var curretLength = 0
    
    for item in String(N, radix: 2) {
        if item == "1" {
            if startedWithOne {
                if maxLength < curretLength {
                    maxLength = curretLength
                }
                curretLength = 0
            } else {
                startedWithOne = true
            }
        } else {
            if startedWithOne {
                curretLength += 1
            } else {
                startedWithOne = false
            }
        }
    }
    
    return maxLength
}
