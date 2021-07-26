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
    var properties = [String:Int]()
    var ageInDays:Double = 0
    var age:Double? {
        return ageInDays / 30;
    }
    
    override init(){
        super.init();
        properties["hunger"] = 0
        properties["dirt"] = 0
        properties["boredom"] = 60
        properties["drowsiness"] = 0
        ageInDays = 0;
    }
    
    convenience override init(_ name:String) {
        self.init()
        self.name = name
    }
    
    override func feed(){
        if(properties["hunger"] == 0){
            print("\(name) is already full")
        }
        else{
            super.feed();
            properties["hunger"] = 0;
            properties["dirt"]! += 20;
            properties["boredom"]! += 20;
            properties["drowsiness"]! += 10;
        }
    }
    
    override func clean(){
        if(properties["dirt"] == 0){
            print("\(name) is already clean")
        }
        else{
            super.clean();
            properties["dirt"] = 0;
            properties["boredom"]! += 20;
            properties["hunger"]! += 20;
            properties["drowsiness"]! += 10;
        }
    }
    
    override func play(){
        if(properties["boredom"]  == 0){
            print("\(name) is already done playing")
        }
        else{
            super.play();
            properties["boredom"] = 0;
            properties["dirt"]! += 20;
            properties["hunger"]! += 20;
            properties["drowsiness"]! += 10;
        }
    }
    
    override func sleep(){
        if(properties["drowsiness"] == 0){
            print("\(name) has already slept")
        }
        else{
            super.sleep();
            properties["drowsiness"] = 0;
            properties["hunger"]! += 20;
            properties["boredom"]! += 20;
            properties["dirt"]! += 10;
            ageInDays += 1;
        }
    }
    
    func check(){
        print("hunger: \(properties["hunger"]!)");
        print("dirt: \(properties["dirt"]!)");
        print("boredom: \(properties["boredom"]!)");
        print("drowsiness: \(properties["drowsiness"]!)");
        
        if(properties["hunger"]! >= 60){  print("\(name) is hungry"); }
        if(properties["dirt"]! >= 60){ print("\(name) is dirty"); }
        if(properties["boredom"]! >= 60){ print("\(name) is bored"); }
        if(properties["drowsiness"]! >= 60){  print("\(name) is tired"); }
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
