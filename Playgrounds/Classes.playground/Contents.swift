class Toy {
    var nickName = ""
    var loveColor = ""
    var number = 0;
    
    func intro() {
        print("I'm \(nickName)! Nice to meet you! I love \(loveColor)");
    }
    func talk() {
        print("Hello there!");
    }
    
    func bye() {
        print("bye bye!");
    }
}

class Toy_Friend: Toy {
    var realName = ""
    
    override func intro() {
        print("I'm \(nickName)! But REAL NAME is \(realName)! Nice to meet you! I love \(loveColor)");
    }
}

var myToy = Toy();

myToy.nickName = "Soccer Ball";
myToy.loveColor = "BnW";
myToy.number = 308;
myToy.intro();
myToy.talk();
myToy.bye();

var mymyToy = Toy_Friend();
mymyToy.nickName = "Bubble";
mymyToy.realName = "Bloomy";
mymyToy.loveColor = "yellow";
mymyToy.number = 100;
mymyToy.intro();
mymyToy.talk();
mymyToy.bye();


if let mymymyToy = Toy_Friend() as? Toy
{
    print(mymymyToy);
}
