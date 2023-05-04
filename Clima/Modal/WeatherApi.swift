import Foundation

struct WeatherApi {
    let cityName : String?
    var result = ""
    
    func fetchData() {
        //Create URL
        let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName!)&appid=b6af36398d3c9dd99142e3078377c053&units=metric")!
        //Create URL Session
        let session = URLSession(configuration: .default)
        //SessionTask
        let task = session.dataTask(with: url) { data, respsonse, error in
            if (error != nil) {
                print(error!)
                return
            }
            
            if let safeData = data {
                self.dataDecode(data: safeData)
            }
            
        }
        
        task.resume()
        
    }
    
    func dataDecode(data : Data) {
        let decoder = JSONDecoder()
        
        do {
            let weatherData = try decoder.decode(WeatherDecode.self, from: data)
            weatherCondition(condition: weatherData.weather[0].description)
//            weatherTemperature(temp: weatherData.main.temp)
        } catch {
            print(error)
        }
    }
    
   func weatherCondition(condition : String) {
        print(condition)
    }
    
//    func weatherTemperature(temp : Double) -> Double {
//        return temp
//    }
}
