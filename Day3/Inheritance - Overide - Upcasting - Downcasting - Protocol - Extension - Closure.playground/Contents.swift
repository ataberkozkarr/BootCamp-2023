import UIKit

//INHERITANCE

class Home {
    var windows_pcs:Int?
    
    init(windows_pcs:Int){
        self.windows_pcs = windows_pcs
    }
    
}

class Palace:Home {
    
    var tower_pcs:Int?
    
    init(tower_pcs:Int,windows_pcs:Int){
        self.tower_pcs = tower_pcs
        super.init(windows_pcs: windows_pcs) // The error given here is because it needs to get the information about windows_pcs for superclass
    }

}

class Villa:Home {
    
    var any_garage:Bool?
    
    init(any_garage:Bool,windows_pcs:Int) {
        self.any_garage = any_garage
        super.init(windows_pcs: windows_pcs)
    }
    
}

let topkapi_palace = Palace(tower_pcs: 10, windows_pcs: 300)
let istanbul_villa = Villa(any_garage: true, windows_pcs: 12)

print(topkapi_palace.tower_pcs!)
print(topkapi_palace.windows_pcs!)


// OVERRIDE

class Animal {
    
    func sound(){
        print("There is no voice")
    }
}

class Mammals:Animal {
    
    
}

class Cat:Mammals {
    
    override func sound() {
        print("Meow")
    }
    
}

class Dog:Mammals {
    override func sound() {
        print("Hav")
    }
    
}

let animal = Animal()
let mammals = Mammals()
let cat = Cat()
let dog = Dog()


animal.sound() //THERE IS NO INHERITANCE
mammals.sound() // INHERITANCE FROM SUPERCLASS (FROM ANIMAL)
cat.sound() // INHERITANCE & OVERRIDE WORKING WITH THEIR FUNC
dog.sound() // INHERITANCE & OVERRIDE WORKING WITH THEIR FUNC


//DOWNCASTING & UPCASTING

//UPCASTING

var home = Palace(tower_pcs: 3, windows_pcs: 10) as Home

//DOWNCASTING

var palace = Home(windows_pcs: 6) as? Palace

//CONTROLLING

if home is Home {
    print("object is created from home")
}else{
    print("object is not created from home")
}


// " sender: any? " accepting all class


//PROTOCOL

protocol MyProtocol {
    
    var number:Int {get set}
    
    func method1()
    func method2()-> String
}

class ClassA: MyProtocol { // You have to use theır functions and Int
    
    var number: Int = 10
    func method1() {
        print("Method 1 Working")
    }
    
    func method2() -> String {
        return "Method 2 Working"
    }
    
    
}

var a = ClassA()

a.method1()
print (a.method2())
print(a.number)


//EXTENSION

extension Int {
    func dimension(Number:Int) -> Int {
        return self * Number
    }
}


let x = 3.dimension(Number: 5)
print(x)

// NUMBER = 5 // SELF = 3


//CLOSURE

let hi = {
    print("hiii")
}

hi()
