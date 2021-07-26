import Foundation

class Pets{
var name:String = ""
var age:Int = 0

func feed(){
     print("\(name) has been fed");
}

func clean(){
     print("\(name) has taken a bath");
}

func play(){
     print("\(name) enjoyed playing with you");
}

func sleep(){
     print("\(name) went to sleep");
}

}

var pet = Pets()
pet.name = "bunny"
pet.feed()
pet.clean()
pet.play()
pet.sleep()