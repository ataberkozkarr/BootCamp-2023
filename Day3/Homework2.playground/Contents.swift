import UIKit

//Homework 1

func edge (edgeCount:Int){
    let edge = (((edgeCount - 2) * 180 ) / 2 )
    print(edge)
}

edge(edgeCount: 20)

//Homework 2

func carPark (hour:Int) -> Int {
    if hour == 1 {
        let pay = hour * 50
        print(pay)
    } else if hour > 1 {
        let pay = (hour * 10 ) + 50
        print(pay)
    }
    return 0
}

carPark(hour: 6)

//Homework 3

func salaryCalculator(hours:Int) {
    var normal_hour = 120
    var normal_salary = 4800
    
    if hours >= 150 {
        var gap_hours = hours - 150
        var money = (gap_hours * 80 ) + normal_salary
        print(money)
    } else if hours < 150 {
        var normal_money = hours * 40
        print(normal_money)
    }
}

salaryCalculator(hours: 200)
