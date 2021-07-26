import Foundation

var cashOnHand:Double = 2000
var runningCash:Double
var percentGain:Double = 10
var yearsToInvest:Int = 5
var yearsElapsed:Int = 0

runningCash = cashOnHand
percentGain = percentGain / 100

repeat {
    runningCash = runningCash + (runningCash * percentGain)
print(runningCash)
    yearsElapsed+=1
} while yearsElapsed < yearsToInvest