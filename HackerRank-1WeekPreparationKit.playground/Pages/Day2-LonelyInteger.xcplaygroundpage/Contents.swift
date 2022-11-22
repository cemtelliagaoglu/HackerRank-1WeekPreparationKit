import Foundation

func lonelyinteger(a: [Int]) -> Int {
    // Write your code here
    var counter = 0
    for i in a{
        for j in a{
            if i == j{
                counter += 1
            }
        }
        if counter == 1{
                return i
        }else{
            counter = 0
        }
    }
    return counter
}
