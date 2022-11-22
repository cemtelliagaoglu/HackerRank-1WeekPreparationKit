import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    let totalRows = arr.count
    var leftToRightSum = 0
    var rightToLeftSum = 0
    for i in 0..<totalRows{
        leftToRightSum += arr[i][i]
        rightToLeftSum += arr[i][totalRows - i - 1]
    }
    return abs(leftToRightSum - rightToLeftSum)
}
