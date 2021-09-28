import Foundation

struct Country {
    var flag = "";
    var name = "";
    var year = "0";
    var population = 0.0;
    var region = "";
}

//  let flags = ["🇰🇷", "🇬🇧", "🇩🇰", "🇬🇷", "🇫🇷"];s
// let countryNames = ["Korea", "United Kingdom", "Denmark", "Greece", "France"];
func getCountries() -> [Country] {
    let korea = Country(flag: "🇰🇷", name: "Republic of Korea", year: "1948", population: 51.71, region: "East Asia");
    let uk = Country(flag: "🇬🇧", name: "United Kingdom", year: "1922", population: 66.65, region: "Europe");
    let denmark = Country(flag: "🇩🇰", name: "Kingdom of Denmark", year: "8C", population: 51.32, region: "Europe");
    let portugal = Country(flag: "🇵🇹", name: "Portugal", year: "1143", population: 10.3, region: "Europe");
    let france = Country(flag: "🇫🇷", name: "France", year: "843", population: 67.06, region: "Europe");
    return [korea, uk, denmark, portugal, france];
}

