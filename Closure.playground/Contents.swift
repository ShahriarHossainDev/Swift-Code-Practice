import UIKit

// declaring variable that cas hold closures

var sumClosure:(Int, Int) -> Int
var subtractClosure: (Int, Int) -> Int
var multiplyClosure: (Int, Int) -> Int
var divideClosure: (Int, Int) -> Int

/*
sumClosure = { (a:Int, b:Int) -> Int in
    return a + b
}
*/

// Return implicitly value
/*
sumClosure = { (a: Int, b:Int) -> Int in
   a + b
}
*/
/*
sumClosure =  {(a:Int, b:Int) in
    a + b
}
*/
//Final version of our sum closure
sumClosure = {
    $0 + $1
}
let summ = sumClosure(4,5)

/*
subtractClosure = { (a:Int, b:Int) -> Int in
    return a - b
}
*/
/*
subtractClosure = { (a:Int, b:Int) in
    a - b
}
*/
subtractClosure = {
    $0 - $1
}

let sub = subtractClosure(5,4)
/*
multiplyClosure = { (a:Int, b: Int) -> Int in
    return a * b
}

*/
multiplyClosure = { $0 * $1 }
let mult = multiplyClosure(4,5)
divideClosure = { $0/$1}
let divide = divideClosure(20,5)

print(mult)
print(divide)


func calculateNumbers(numA: Int, numB: Int, calculate:(Int, Int)->Int) -> Int {
    let calcRes = calculate(numA, numB)
    return calcRes
}

let sum = calculateNumbers(numA: 5, numB: 2, calculate: sumClosure)
let subt = calculateNumbers(numA: 5, numB: 2, calculate: subtractClosure)
let multR = calculateNumbers(numA: 5, numB: 2, calculate: multiplyClosure)
let divideR = calculateNumbers(numA: 12, numB: 3, calculate: divideClosure)

calculateNumbers(numA: 10, numB: 2, calculate: {(a: Int, b:Int)->Int in
    a+b
})

calculateNumbers(numA: 30, numB: 3) {
    $0 * $1
}


let closureWithNoParemeter: () -> String = {
    "This is a closure with no parameter."
}

closureWithNoParemeter()

let closureWithNoReturnValue: (_ fn: Int) -> Void = { _ in
    print("This is a closure with no parameter.")
}

closureWithNoReturnValue(5)

func multiply() ->((Double) -> Double) {
    var num = 2.0
    let multC: (Double) -> Double = { (a:Double) in
        num = num * a
        return num
    }
    return multC
}

let muc = multiply()
muc(5.0)
