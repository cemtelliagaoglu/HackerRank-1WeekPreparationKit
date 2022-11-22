import Foundation

func findMedian(arr: [Int]) -> Int {
    // Write your code here
    let sortedArray = arr.sorted(by: { $0 < $1})
    if sortedArray.count % 2 == 0 {
        return sortedArray[sortedArray.count / 2 - 1]
    }else{
        return sortedArray[(sortedArray.count / 2) ]
    }
}
