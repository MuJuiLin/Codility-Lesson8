
import Foundation

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    
    guard A.count > 0 else { return 0 }
    
    // Find the leader element
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
    
    // Element's Total count
    count = 0
    for number in A {
        if number == element {
            count += 1
        }
    }
    
    var passedElementCount = 0
    var result = 0
    for (index, number) in A.enumerated() {
        if number == element {
            passedElementCount += 1
            count -= 1
        }
        if passedElementCount * 2 > index + 1 && count * 2 > A.count - index - 1{
            result += 1
        }
    }
    
    return result
}

