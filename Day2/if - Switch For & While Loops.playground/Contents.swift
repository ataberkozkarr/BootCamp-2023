import UIKit

// if

var age = 19
var name = "Ataberk"

if age >= 18 {
    print("You are older than 18!")
}
else {
    print("You are younger than 18 you can't access")
}

if name == "Ataberk "{
    print("Merhaba \(name)")
}
else {
    print("Unknown Person")
}

//EXAMPLE

let userName = "ataberkozkar"
var password = "9988"

if userName == "ataberkozkar" && password == "9988"{
    print("Welcome Admin")
}
else {
    print("You can't access")
}

// SWITCH

var gun = 3

switch gun {
        case 1: print("Sunday1")
        case 2: print("Sunday2")
        case 3: print("Sunday3")
        case 4: print("Sunday4")
        case 5: print("Sunday5")
        case 6: print("Sunday6")
        case 7: print("Sunday7")
default: print("Wrong Number")
}


// FOR

for i in 1...3 {
    print("For Loops Range : \(i)")
}

// 10 TO 20 INCREASING BY FIVE

for i in stride(from: 10, through: 20, by: 5){
    print(i)
}

// 10 TO 20 DECREASING BY FIVE

for i in stride(from: 20, through: 10, by: -5){
    print(i)
}

var start = 20
var through = 10
var by = -5

for i in stride(from: start, through: through, by: by) {
    print("Different way to see \(i)")
}


//While

var loop = 1

while loop < 4 {
    print(loop)
    loop += 1
    //or loop = loop + 1
}


// KEYWORDS

for i in 1...5 {
    if i == 3 {
        continue
    }
    print(i)
}

for i in 1...5 {
    if i == 3 {
        break
    }
    print(i)
}

