import UIKit


let tipAndTotal:(Double, Double) = (4.00, 25.19)
tipAndTotal.0
tipAndTotal.1

let (theTipAmt, theTotal) = tipAndTotal
theTipAmt
theTotal

let tipAndTotalNamed = (tipAmt:4.00, total:25.19)
tipAndTotalNamed.tipAmt
tipAndTotalNamed.total


let _ = ()


let arrayNumbers = ["one", "two", "three"]
let tupleOne = (first: "1", second: arrayNumbers[2])


let tupleTwo = (1, true, "Yes")

print(tupleTwo.0)
print(tupleTwo.1)
print(tupleTwo.2)


let tupleThree = ("No", tupleTwo)

print(tupleThree.0)
print(tupleThree.1)


var tupleCompanies = (first: "Apple", second: "IBM")

var tupleCompaniesNew = (first: tupleCompanies.first, second: tupleCompanies.second)
tupleCompaniesNew.second = "Google"

print(tupleCompaniesNew)


let name = "Sergey"
let surName = "Angelov"
let age = 27

let myTuple = (name, surName, age)


//Нет не является.
