//
//  VerticalSettingsViewModel.swift
//  TestForKontur
//
//  Created by Domiik on 22.03.2022.
//

import Foundation


final class VerticalSettingsViewModel: ObservableObject {
    
    @Published var verticalSettingsViewModel: SpaceRocket!
    
    init(verticalSettingsViewModel: SpaceRocket) {
        self.verticalSettingsViewModel = verticalSettingsViewModel
    }
    
    var firstStart: String {
        return getDate(dateGet: verticalSettingsViewModel.firstFlight)
    }
    
    var counrty: String {
        return verticalSettingsViewModel.country ?? "nil"
    }
    
    var costStart: String {
        formatterCurrency(currency: verticalSettingsViewModel.costPerLaunch)
    }
    
    var numbersEnginesFirstStage: String {
        return verticalSettingsViewModel.firstStage.engines.description ?? "nil"
    }
    
    var fuelAmountTonsFirstStage: String {
        return verticalSettingsViewModel.firstStage.fuelAmountTons.description ?? "nil"
    }
    
    var burnTimeSecFirstStage: String {
        return verticalSettingsViewModel.firstStage.burnTimeSEC?.description ?? "nil"
    }
    
    var numbersEnginesSecondStage: String {
        return verticalSettingsViewModel.secondStage.engines.description ?? "nil"
    }
    
    var fuelAmountTonsSecondStage: String {
        return verticalSettingsViewModel.firstStage.fuelAmountTons.description ?? "nil"
    }
    
    var burnTimeSecSecondStage: String {
        return verticalSettingsViewModel.firstStage.burnTimeSEC?.description ?? "nil"
    }
    
    
    func formatterCurrency(currency: Int) -> String {
        var formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.string(from: NSNumber(value: currency))
        formatter.locale = NSLocale(localeIdentifier: "es_CL") as Locale
        formatter.string(from: NSNumber(value: currency))// $123"
        
        return formatter.string(from: NSNumber(value: currency)) ?? "nil"
    }
    
    func getDate(dateGet: String) -> String{
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyyy-MM-dd"
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "d MMMM, yyyy"
        
        if let date = dateFormatterGet.date(from: dateGet) {
            return dateFormatterPrint.string(from: date)
        }
        return "nil"
    }
    
    
}


