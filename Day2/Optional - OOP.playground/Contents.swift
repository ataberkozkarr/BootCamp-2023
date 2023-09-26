import UIKit

// OPTIONAL nil = null = nullSafety

var message = "Hi"

//null

var str:String? // It must be optional so we have to use "?"

//str = "Hello"

if str != nil {
    print(str!) //Unwrap
}
else {
    print("Str has to be nil")
}

// Optional Binding

if let temp = str {
    print(temp) //automatic unwrap
} else {
    print("Str has to be nil")
}

//Can be use with "var"

if var temp = str {
    print(temp) //automatic unwrap
} else {
    print("Str has to be nil")
}
