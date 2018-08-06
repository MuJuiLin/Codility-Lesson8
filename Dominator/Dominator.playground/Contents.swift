
import Foundation

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    
    guard A.count > 0 else { return -1 }
    
    var count = 0
    var element = A[0]
    for number in A {
        if number == element {
            count += 1
        }
        else {
            if count == 0 {
                count = 0
                element = number
            }
            else {
                count -= 1
            }
        }
    }
    
    var result = 0
    var resultIndex = 0
    for (index, number) in A.enumerated() {
        if number == element {
            result += 1
            resultIndex = index
        }
    }
    
    if result * 2 > A.count {
        return resultIndex
    }
    else {
        return -1
    }
}

