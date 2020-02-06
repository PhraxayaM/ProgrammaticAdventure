//
//  ViewController.swift
//  ClimateProgrammatically
//
//  Created by MattHew Phraxayavong on 1/27/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation
import Alamofire
import SwiftyJSON

class MainViewController: UIViewController, CLLocationManagerDelegate, ChangeCityDelegate
{
    
    
    
    var mainView = MainView()
    let WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather"
    let APP_ID = "435bd3d12d68cedd66191c5eb5092e09"
    let locationManager = CLLocationManager()
    let weatherDataModel = WeathDataModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        setup()
        setupPermissionRequest()
        
    }
    
    func setup(){
        setupView()
    }
    
    func setupView(){
        let MainViews = MainView(frame: self.view.frame)
        mainView = MainViews
        
        self.view.addSubview(mainView)
        mainView.changeCityButton.addTarget(self, action: #selector(changeCitybuttonPressed), for: .touchUpInside)
    }
    
    func setupPermissionRequest(){
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[locations.count - 1]
        if location.horizontalAccuracy > 0 {
            locationManager.stopUpdatingLocation()
            print("longitude: \(location.coordinate.longitude), latitude: \(location.coordinate.latitude)")
            let latitude = String(location.coordinate.latitude)
            let longitude = String(location.coordinate.longitude)
            
            let params : [String: String] = ["lat": latitude, "lon" : longitude, "appid" : APP_ID]
//            mainView.cityLabel.text = "Success!"
            
            getWeatherData(url: WEATHER_URL, parameters: params)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
        mainView.cityLabel.text = "Location Unavailable"
    }
    
    func getWeatherData(url: String, parameters: [String: String]) {
        Alamofire.request(url, method: .get, parameters: parameters).responseJSON { (response) in
            if response.result.isSuccess {
                print("success! got weather data")
                let weatherJSON : JSON = JSON(response.result.value!)
                self.updateWeatherData(json: weatherJSON)
                
            }
            else {
                print("ERROR!!")
                print("Error is: \(response.result.error)")
                self.mainView.cityLabel.text = "Connection issue"
            }
        }
    }
    
    func updateWeatherData(json: JSON) {
        
        if let temp = json["main"]["temp"].double {
        weatherDataModel.temperate = Int(temp - 273.15)
        weatherDataModel.city = json["name"].stringValue
        weatherDataModel.condition = json["weather"][0]["id"].intValue
            weatherDataModel.weatherIconName = weatherDataModel.updateWeatherIcon(condition: weatherDataModel.condition)
            
            updateUIWithWeatherData()
        }
        else {
            mainView.cityLabel.text = "weather unavailable"
        }
    }

    func updateUIWithWeatherData() {
        
        mainView.cityLabel.text = weatherDataModel.city
        mainView.temperatureLabel.text = "\(weatherDataModel.temperate)"
        mainView.weatherIcon.image = UIImage(named: weatherDataModel.weatherIconName)
        print("Weather is: \(weatherDataModel.weatherIconName)")
        
        
    }
    
    @objc func changeCitybuttonPressed() {
        print("button pressed")
        let destinationVC = ChangeCityViewController()
        destinationVC.delegate = self
        navigationController?.present(destinationVC, animated: true, completion: nil)

    }
    
    func userEnteredANewCityName(city: String) {
        print("city is: \(city)")
    }
    

    
    
}
