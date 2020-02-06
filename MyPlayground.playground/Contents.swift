import UIKit

var str = "Hello, playground"

//
//func matthew(n: Int) {
//
//    if n = 0 {
//        return
//    }
//    return matthew(n: n+2)-(n: n+1)
//
//}


//Interview #1
//Given the following code:
//
//var array1 = [1, 2, 3, 4, 5]
//var array2 = array1
//array2.append(6)
//var len = array1.count
//What’s the value of the len variable, and why?
//
var list = [1,2,5,6]

func salaryIncrease(salary: Float, rate: Float, years: Float) -> Any {
    let increase: Int = 0
//    var years_convert = 364 * years
//    print(salary*rate)
//    print((salary*rate) * years)
    var answer = (salary*rate*years)
    
    return answer
}

salaryIncrease(salary: 100.0, rate: 0.1, years: 10.0)
salaryIncrease(salary: 115000.0, rate: 0.3, years: 10.0)



func mean(arr: [Int]) -> Any {
//    var answer = arr.average
    var sum = 0
    for x in arr {
//        sum = (x + (x+1))/arr.count
        sum += x
    }
    return sum
}

mean(arr: [1,2,3,4])

func median(arr: [Int]) -> Any {
    var sorted = arr.sorted()
    var count = arr.count
    
    if count < 1 {
        return []
    }
    if (count % 2 == 0) {
        return (Double(sorted[count / 2 - 1]) + Double(sorted[count / 2])) / 2
    }
    return Double(sorted[count / 2])

    
}


var testa = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
median(arr: testa)
