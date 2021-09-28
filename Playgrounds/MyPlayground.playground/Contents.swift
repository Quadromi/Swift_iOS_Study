let sign: [String] = ["*", ":", "O"];

var signNum = 0;


TreeUpper(num: 15);
TreeTrunk(num: 8);
TreeName(name: "Needle Leaf Tree");
DateShow(date: "2021.09.14");

func WhiteSpace(num: Int)
{
    for _ in 1...num
    {
        print(" ", terminator:"");
    }
}

func TreeUpper(num: Int)
{
    for i in 1...num
    {
        if(signNum / 3 == 1)
        {
            signNum = 0;
        }
        let n = 2*i - 1;
        
        let whiteSpace = (32 - n)/2
        
        WhiteSpace(num: whiteSpace);
        
        for _ in 1...n
        {
            print(sign[signNum], terminator:"");
        }
        
        WhiteSpace(num: whiteSpace);
        
        print();
        signNum += 1;
    }
}

func TreeTrunk(num: Int)
{
    for _ in 1...8
    {
        let whiteSpace = 14;
        WhiteSpace(num: whiteSpace);
        for _ in 1...4
        {
            print(sign[1], terminator:"");
        }
        WhiteSpace(num: whiteSpace);
        print();
    }
}

func TreeName(name: String)
{
    print();
    let nameLen = name.count;
    let whiteSpace = (32 - nameLen) / 2;
    WhiteSpace(num: whiteSpace);
    print(name);
    WhiteSpace(num: whiteSpace);
}

func DateShow(date: String)
{
    print();
    let whiteSpace = (32 - date.count) / 2
    WhiteSpace(num: whiteSpace);
    print(date, terminator:"");
    WhiteSpace(num: whiteSpace);
}
