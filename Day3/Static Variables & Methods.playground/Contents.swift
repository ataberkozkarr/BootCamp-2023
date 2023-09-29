import UIKit

// Static Variables

class Aclass {
    var x = 10
    
    func method(){
        print("method working")
    }
}

let a = Aclass()
print(a.x)
a.method()

print(Aclass().x) // Virtual Object - noname object

Aclass().method()


class Bclass {
    static var x = 10
    
    static func method(){
        print("method working")
    }
}

Bclass.method()


//ENUMERATION

enum Size {
    case small
    case medium
    case large
}

func priceCalculator(size:Size,pcs:Int){
    switch size {
    case Size.large: print("Price : \(pcs * 20) $")
    case Size.medium: print("Price : \(pcs * 15) $")
    case Size.small: print("Price : \(pcs * 14) $")
    }
}

priceCalculator(size: .small, pcs: 12)


//COMPOSITION

class category {
    var category_id:Int?
    var category_name:String?
    
    init(category_name:String,category_id:Int){
        self.category_id = category_id
        self.category_name = category_name
    }
}

class productor {
    var productor_id:Int?
    var productor_name:String?
    
    init(productor_id:Int,productor_name:String){
        self.productor_id = productor_id
        self.productor_name = productor_name
    }
}

class films {
    var film_id:Int?
    var film_name:String?
    var film_year:Int?
    var category:category?
    var productor:productor?
    
    init (film_id:Int,film_name:String,film_year:Int,category:category,productor:productor){
        self.film_id = film_id
        self.film_name = film_name
        self.film_year = film_year
        self.category = category
        self.productor = productor
        
    }
}


let c1 = category(category_name: "Dram", category_id: 1)
let c2 = category(category_name: "Comedy", category_id: 2)

let p1 = productor(productor_id: 1, productor_name: "Quentin Tarantino")
let p2 = productor(productor_id: 2, productor_name: "Christopher Nolan")

let f1 = films(film_id: 1, film_name: "Django", film_year: 2013, category: c1, productor: p1)
print("Film id : \(f1.film_id!)")
print("Film name : \(f1.film_name!)")
print("Film year : \(f1.film_year!)")
print("Film category : \(f1.category!.category_name!)")
print("Film productor : \(f1.productor!.productor_name!)")
