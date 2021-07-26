import Foundation

func walk(_ direction:String,_ steps:Int) -> String{
    return "You have walked " + String(steps) + " steps to the " + direction
}

let resultStr:String = walk("North",5)

print(resultStr)