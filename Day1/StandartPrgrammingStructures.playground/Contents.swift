import UIKit

//COMPARISON OPERATORS

var number_1 = 1
var number_2 = 5

var addition = number_1 + number_2

print("number_1 == number_2 \(number_2 == number_1)")
print("number_1 != number_2 \(number_2 != number_1)")
print("number_1 < number_2 \(number_2 < number_1)")
print("number_1 > number_2 \(number_2 > number_1)")
print("number_1 >= number_2 \(number_2 >= number_1)")
print("number_1 <= number_2 \(number_2 <= number_1)")


print(addition)

if addition < 0 {
    print("Negative")
}
else {
    print("POSITIVE")
}

//-ODD EVEN

var number = 213214123124123

if number % 2 == 0 {
    print("Number is odd")
}
else if number % 2 != 0 {
    print("Number is even")
}
else {
    print("ERROR")
}


