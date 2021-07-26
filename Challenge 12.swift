import Foundation

class Pets{
var name:String = ""

init(){
     name = "bunny";
}

init(_ name:String){
     self.name = name;
}

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
print(pet.name)
var pet2 = Pets("doggy")
print(pet2.name)


class Tamagotchi : Pets{
var hunger:Int = 0
var dirt:Int = 0
var boredom:Int = 0
var drowsiness:Int = 0
var ageInDays:Double = 0
var age:Double? {
    return ageInDays / 30;
}

override init(){
     super.init();
     boredom = 60;
     ageInDays = 0;
}

override init(_ name:String){
     super.init(name);
     boredom = 60;
     ageInDays = 0;
}


override func feed(){
    if(hunger == 0){
         print("\(name) is already full")
    }
    else{
         super.feed();
         hunger = 0;
         dirt += 20;
         boredom += 20;
         drowsiness += 10;
    }
}

override func clean(){
    if(dirt == 0){
         print("\(name) is already clean")
    }
    else{
         super.clean();
         dirt = 0;
         boredom += 20;
         hunger += 20;
         drowsiness += 10;
    }
}

override func play(){
    if(boredom  == 0){
         print("\(name) is already done playing")
    }
    else{
         super.play();
         boredom = 0;
         dirt += 20;
         hunger += 20;
         drowsiness += 10;
    }
}

override func sleep(){
    if(drowsiness == 0){
         print("\(name) has already slept")
    }
    else{
         super.sleep();
         drowsiness = 0;
         hunger += 20;
         boredom += 20;
         dirt += 10;
         ageInDays += 1;
    }
}

func check(){
    print("hunger: \(hunger)");
    print("dirt: \(dirt)");
    print("boredom: \(boredom)");
    print("drowsiness: \(drowsiness)");

    if(hunger >= 60){  print("\(name) is hungry"); }
    if(dirt >= 60){ print("\(name) is dirty"); }
    if(boredom >= 60){ print("\(name) is bored"); }
    if(drowsiness >= 60){  print("\(name) is tired"); }
}

func getAge(){
    print("\(name) is \(age!) months old");
}

}

var game = Tamagotchi()
game.name = "bunny"

for _ in 1...15 {
game.play()
game.feed()
game.clean()
game.sleep()
game.check()
}

game.getAge()
