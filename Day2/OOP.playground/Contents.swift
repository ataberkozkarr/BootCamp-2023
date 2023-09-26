import UIKit


class Car {
    var color:String?
    var speed:Int?
    var stock:Bool?
    
    //Constructor
    
    init() {
        print("Empty init")
    }
    
    init(color:String,speed:Int,stock:Bool){
        self.color = color  //SELF REPRESENTS THE CLASS IT IS IN
        self.speed = speed  //CHANGE THE VALUE BETWEEN CAR CLASS AND INIT
        self.stock = stock  //Shadowing method
        print("Full init")
        
        
    }
    
    func response() {
        
        print("-----------------")
        print("Color : \(color!)")
        print("Speed : \(speed!)")
        print("Stock : \(stock!)")
        
    }
    
    func start() { //Side Effect
        stock = true
        speed = 200
    }
    
    func stop() {
        stock = false
        speed = 0
    }
    
    func speedUp(km:Int){
        speed! += km // speed = speed + km
    }
    
    func speedDown(km:Int){
        speed! -= km
    }
    
}

//Object Creation

//var bmw = Car()
//var mercedes = Car()

//Assign Value

// bmw.color = "Red"
//bmw.speed = 330
//bmw.stock = true

//bmw.stop()
//bmw.response()//automatic
//bmw.start()
//bmw.speedUp(km: 50)
//bmw.response()
//bmw.speedDown(km: 30)
//bmw.response()

//mercedes.color = "Green"
//mercedes.speed = 380
//mercedes.stock = false
//mercedes.response()
 

//Değer Okuma

//print("Color : \(bmw.color!)")
//print("Speed : \(bmw.speed!)")
//print("Stock : \(bmw.stock!)")

//print("---------------------")

//print("Color : \(mercedes.color!)")
//print("Speed : \(mercedes.speed!)")
//print("Stock : \(mercedes.stock!)")



//New Methods

var bmw = Car(color: "red", speed: 200, stock: true)
bmw.response()
