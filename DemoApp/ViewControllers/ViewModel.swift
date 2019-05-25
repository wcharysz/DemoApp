//
//  ViewModel.swift
//  DemoApp
//
//  Created by iOS Team 2 on 5/23/19.
//  Copyright © 2019 iOS Team 2. All rights reserved.
//

import Foundation

class ViewModel {
    
    unowned var delegate: ViewController
    
    var selectedCountryCode: String?
    
    init(_ controller: ViewController) {
        delegate = controller
    }
    
    //MARK - SearchBar
    
    func performSearchFor(_ cityName: String?) {
        let networking = Networking()
        
        guard let cityName = cityName, let countryCode = selectedCountryCode else { return }
        
        networking.downloadWeatherFor(cityName, countryCode: countryCode) { (city) in
            print("CITY: ", city ?? "nothing")
        }
    }
    
    func selectDefaultCountry() {
        guard let index = Locale.isoRegionCodes.firstIndex(of: "GB") else { return }
        
        delegate.pickerView.selectRow(index, inComponent: 0, animated: true)
        didSelectPicker(index)
    }
    
    //MARK - UIPickerViewDataSource
    
    func numberOfRowsInComponent(_ component: Int) -> Int {
        return Locale.isoRegionCodes.count
    }
    
    func titleForRow(_ row: Int) -> String? {
        let isoCode = Locale.isoRegionCodes[row]
        
        return Locale.current.localizedString(forRegionCode: isoCode)
    }
    
    func didSelectPicker(_ row: Int) {
        selectedCountryCode = Locale.isoRegionCodes[row]
    }
    
}
