import Foundation

var strOperator:String = "x"
var num1:Int = 5
var num2:Int = 3
var result:Int

switch strOperator{
case "+":
    result = num1 + num2
    print(result)
case "-":
    result = num1 - num2
    print(result)
case "*","x":
    result = num1 * num2
    print(result)
case "/":
    result = num1 / num2
    print(result)
default:
    print("Operator does not exist")
}