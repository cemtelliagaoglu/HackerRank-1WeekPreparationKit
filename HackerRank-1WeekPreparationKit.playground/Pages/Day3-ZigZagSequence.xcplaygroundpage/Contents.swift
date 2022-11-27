import Foundation

func zigZagSequence(array: [Int]){
    let k = (array.count + 1) / 2
    let sortedArray = array.sorted(by: { $0 < $1})
    var result:[Int] = []
    for i in 0..<k - 1{
        result.append(sortedArray[i])
    }
    for i in stride(from: array.count - 1, to: k - 2, by: -1){
        result.append(sortedArray[i])
    }
    print(result)
}
