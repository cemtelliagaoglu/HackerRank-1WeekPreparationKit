import Foundation

func countingSort(arr: [Int]) -> [Int] {
    // Write your code here
    var counter: [Int] = []
    for _ in 0...99{
        counter.append(0)
    }
    for i in arr{
        counter[i] += 1
    }
    return counter
}
