func goodDay(day: String, month: Int) {
    print("Hi Hello Everyone Good Day and Good Night: \(day) on \(month) Month!");
}

goodDay(day: "Sunday", month: 11);

func multiply(x: Int, y: Int) -> Int {
    return x * y;
}
var result: Int = multiply(x:8, y: 3);

goodDay(day: "Thursday", month: result);

func add(x: Double, y:Double, z:Double) -> Int {
    return Int(x + y + z);
}

print(add(x: 1.1, y:2.3, z:4.5));
