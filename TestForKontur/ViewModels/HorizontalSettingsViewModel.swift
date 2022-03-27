//
//  HorizontalSettingsViewModel.swift
//  TestForKontur
//
//  Created by Domiik on 18.03.2022.
//

import Foundation


class HorizontalSettingsViewModel: ObservableObject {
    
    @Published private var rocketsHorizontalSettings: SpaceRocket!
    @Published var stateHeight: Int = 0
    @Published var height: String = "" {
        willSet {
            if stateHeight == 0 {
                height = heightFt
            } else {
                height = heightMeter
            }
        }
    }
    
    
    init(rocket: SpaceRocket) {
        self.rocketsHorizontalSettings = rocket
    }
    
    
    var heightFt: String {
        return rocketsHorizontalSettings.height.feet?.description ?? "nil"
    }
    
    var heightMeter: String {
        return rocketsHorizontalSettings.height.meters?.description ?? "nil"
    }
    
    var diameterFt: String {
        return rocketsHorizontalSettings.diameter.feet?.description ?? "nil"
    }
    
    var diameterMetr: String {
        return rocketsHorizontalSettings.diameter.meters?.description ?? "nil"
    }
    
    var massKg: String {
        return rocketsHorizontalSettings.mass.kg.description ?? "nil"
    }
    
    var massLb: String {
        return rocketsHorizontalSettings.mass.lb.description ?? "nil"
    }
    
    var payloadWeightsKg: String {
        return rocketsHorizontalSettings.payloadWeights.first?.kg.description ?? "nil"
    }
    
    var payloadWeightsLb: String {
        return rocketsHorizontalSettings.payloadWeights.first?.lb.description ?? "nil"
    }
    
    
     func getHeight() -> String {
         if stateHeight == 0 {
            print("metr")
             print(stateHeight)

            return heightMeter
        } else {
            print("ft")
            print(stateHeight)

            return heightFt
        }
         
         
    }
        
  
}
