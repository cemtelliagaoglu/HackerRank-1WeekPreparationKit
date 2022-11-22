import Foundation

func miniMaxSum(arr: [Int]) -> Void {
    // Write your code here
    var minResult = 0
    var maxResult = 0
    let sortedArray = arr.sorted(by: { $0 < $1    })
    
    for i in 0..<4{
        minResult += sortedArray[i]
    }
    for i in arr.count - 4..<arr.count{
        maxResult += sortedArray[i]
    }
    print("\(minResult) \(maxResult)")
}
