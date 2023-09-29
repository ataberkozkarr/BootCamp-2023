import UIKit

class Functions {
    func hi1 () { //void functions there is no return value
        let result = "Hi, Ataberk"
        print(result)
    }
    
    func hi2 () -> String { //Value functions
        let result = "Hi, Ataberk"
        print(result)
        return result
    }
    
    func hi3 (name:String) {
        let result = "Hi, \(name)"
        print(result)
    }
    
    func addition (number1:Int,number2:Int) -> Int{
        let addition = number1 + number2
        return addition
    }
    
    //Overloading Using again and again
    
    func multipy(number1:Int,number2:Int){
        let multipy = number1 * number2
        print(multipy)
    }
    
    func multipy(number1:Double,number2:Double){
        let multipy = number1 * number2
        print(multipy)
    }
    func multipy(number1:Double,number2:Double,name:String){
        let multipy = number1 * number2
        print("Who did the multipy \(name) & result : \(multipy)")
    }
}

let f = Functions()

f.hi1()
let result = f.hi2()
print("Result : \(result)")

f.hi3(name: "Ata")

let addition = f.addition(number1: 12, number2: 15)
print("Addition \(addition)")

let multipy = f.multipy(number1: 20, number2: 30, name: "ata")
print(multipy)
