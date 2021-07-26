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
var properties:[Int] = [0,0,0,0]
var ageInDays:Double = 0
var age:Double? {
    return ageInDays / 30;
}

override init(){
     super.init();
     properties[2] = 60; //boredom
     ageInDays = 0;
}

convenience override init(_ name:String) {
    self.init()
    self.name = name
}

override func feed(){
    if(properties[0] == 0){
         print("\(name) is already full")
    }
    else{
         super.feed();
         properties[0] = 0; //hunger
         properties[1] += 20; //dirt
         properties[2] += 20; //boredom
         properties[3] += 10; //drowsiness
    }
}

override func clean(){
    if(properties[1] == 0){
         print("\(name) is already clean")
    }
    else{
         super.clean();
         properties[1] = 0; //dirt
         properties[2] += 20; //boredom
         properties[0] += 20; //hunger
         properties[3] += 10; //drowsiness
    }
}

override func play(){
    if(properties[2]  == 0){
         print("\(name) is already done playing")
    }
    else{
         super.play();
         properties[2] = 0; //boredom
         properties[1] += 20; //dirt
         properties[0] += 20; //hunger
         properties[3] += 10; //drowsiness
    }
}

override func sleep(){
    if(properties[3] == 0){
         print("\(name) has already slept")
    }
    else{
         super.sleep();
         properties[3] = 0; //drowsiness
         properties[0] += 20; //hunger
         properties[2] += 20; //boredom
         properties[1] += 10; //dirt
         ageInDays += 1;
    }
}

func check(){
    print("hunger: \(properties[0])");
    print("dirt: \(properties[1])");
    print("boredom: \(properties[2])");
    print("drowsiness: \(properties[3])");

    if(properties[0] >= 60){  print("\(name) is hungry"); }
    if(properties[1] >= 60){ print("\(name) is dirty"); }
    if(properties[2] >= 60){ print("\(name) is bored"); }
    if(properties[3] >= 60){  print("\(name) is tired"); }
}

func getAge(){
    print("\(name) is \(age!) months old");
}

}

var game = Tamagotchi("tiger")

for _ in 1...15 {
game.play()
game.feed()
game.clean()
game.sleep()
game.check()
}

game.getAge()
