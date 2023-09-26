import UIKit

var great = 10
print(great)

great = 200
print(great)


//let number2 = 10
//print(number2)
//number2 = 200 you can't


// TYPE CASTING

//numeric to numeric

var id_1 = 22
var id_2 = 30.22

var result_1 = Double(id_1)
var result_2 = Int(id_2)

print(result_1)
print(result_2)


// NUMERICAL TO STRING

var result_3 = String(id_1)
var result_4 = String(id_2)


//STRING TO NUMERICAL & OPTIONAL IF LET 

var word = "49"

if let result = Int(word){
 print(result)
}
else {
    print("ERROR")
}
