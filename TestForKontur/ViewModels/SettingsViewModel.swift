//
//  SettingsViewModel.swift
//  TestForKontur
//
//  Created by Domiik on 25.03.2022.
//

import Foundation


final class SettingsViewModel: ObservableObject {
    @Published var height: Int = UserDefaults.standard.integer(forKey: "height") {
        didSet {
            UserDefaults.standard.set(height, forKey: "height")
        }
    }
}
