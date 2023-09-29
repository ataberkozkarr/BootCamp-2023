import UIKit

//Homework 1

func kmCalculator (km:Double) -> Double{
    let kmCalculator = km * 0.621
    return kmCalculator
}

let calculator = kmCalculator(km: 40.9)
print(calculator)


// ------------------------------------

//Homework 2

func dikdortgenAlani (kisaKenar:Double,uzunKenar:Double){
    let dikdortgenAlani = kisaKenar * uzunKenar
    print(dikdortgenAlani)
}
dikdortgenAlani(kisaKenar: 30.4, uzunKenar: 30.2)

//Homework 3


func factorial (factorialNumber:UInt64) -> UInt64{
    if factorialNumber == 0 {
        return 1
    }else {
        var a: UInt64 = 1
        for i in 1...factorialNumber {
            a *= UInt64(i)
        }
        return a
    }
}

let x = factorial(factorialNumber: 5)
print(x)

//Homework 4

func char (paragraph:String){
    var allChar = 0
    var eLetter = 0
    
    for i in paragraph {
        allChar += 1
        if i == "e"{
            eLetter += 1
        }
    }
    //print(eLetter)
}

var paragraph = char(paragraph: "Edirne ordu trabzon trabzone e e e e e e")



