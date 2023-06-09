import Foundation

struct WeatherDecode : Decodable {
    var name : String
    var main : Main
    var weather : [Weather]
}

struct Main : Decodable {
    var temp : Double
}

struct Weather : Decodable {
    var id : Int
    var description : String
}
