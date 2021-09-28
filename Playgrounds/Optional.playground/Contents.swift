var year: Int? = 2001;

var x = Int("Sinia");

// x! * 5 -> Dangerous!!!

if x != nil {
    x! * 5
}
else {
    print("It's nil...");
}

if let y = Int("Mike"){
    print(y);
}
