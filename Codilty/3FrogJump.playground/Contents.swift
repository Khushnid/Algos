import UIKit

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    guard X != Y else { return 0 }
    let value: Double = Double(Y - X) / Double(D)
    return Int(value.rounded(.up))
}

solution(10, 100, 40)
