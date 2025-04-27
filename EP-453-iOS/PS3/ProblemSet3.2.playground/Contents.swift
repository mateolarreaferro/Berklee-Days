import UIKit

var str = "Hello, playground"

var mateosArray:[Int] = [1, 2, 3 , 5 , 8]

func average(nums: [Int]) -> Float {

    var total = 0.0
    for mat in mateosArray{
        total += Float(mat)
    }

    let mateosArrayTotal = Float(nums.count)
    var average = total/mateosArrayTotal
    return average
}

var theAverage = average(mateosArray)


