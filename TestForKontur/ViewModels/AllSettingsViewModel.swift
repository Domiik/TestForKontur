//
//  AllSettingsViewModel.swift
//  TestForKontur
//
//  Created by Domiik on 21.03.2022.
//

import Foundation


class AllSettingsViewModel: ObservableObject {
    
    @Published var allSettings: SpaceRocket!
    
    init(allSettings: SpaceRocket) {
        self.allSettings = allSettings
    }
    
    var name: String {
        return allSettings.name ?? "nil"
    }
    
    var id: String {
        return allSettings.id ?? "nil"
    }
    
}
