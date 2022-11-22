import Cocoa

//MARK: - Plus Minus

func plusMinus(arr: [Int]) -> Void {
    // Write your code here
    var counter: [Double] = [0,0,0]
    for i in arr{
        if i > 0{
            counter[0] += 1 / Double(arr.count)
        }else if i < 0{
            counter[1] += 1 / Double(arr.count)
        }else{
            counter[2] += 1 / Double(arr.count)
        }
    }
    for i in counter{
        print(i)
    }
}
