//
//  SettingsViewModel.swift
//  TestForKontur
//
//  Created by Domiik on 25.03.2022.
//

import Foundation

final class SettingsViewModel: ObservableObject {
    
    @Published var typeHeight: Int {
        didSet {
            UserDefaults.standard.set(typeHeight, forKey: "typeHeight")
        }
    }
    
    @Published var typeDiametr: Int {
        didSet {
            UserDefaults.standard.set(typeDiametr, forKey: "typeDiametr")
        }
    }
    
    @Published var typeMass: Int {
        didSet {
            UserDefaults.standard.set(typeMass, forKey: "typeMass")
        }
    }
    
    @Published var typePayLoadWeigh: Int {
        didSet {
            UserDefaults.standard.set(typePayLoadWeigh, forKey: "typePayLoadWeigh")
        }
    }
    
    
    init() {
        self.typeHeight = UserDefaults.standard.object(forKey: "typeHeight") as? Int ?? 0
        self.typeDiametr = UserDefaults.standard.object(forKey: "typeDiametr") as? Int ?? 0
        self.typeMass = UserDefaults.standard.object(forKey: "typeMass") as? Int ?? 0
        self.typePayLoadWeigh = UserDefaults.standard.object(forKey: "typePayLoadWeigh") as? Int ?? 0
    }
}
