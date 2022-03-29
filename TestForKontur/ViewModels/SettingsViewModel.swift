//
//  SettingsViewModel.swift
//  TestForKontur
//
//  Created by Domiik on 25.03.2022.
//

import Foundation

final class SettingsViewModel: ObservableObject {
    @Published var typeHeight = Int()
    @Published var typeDiametr = Int()
    @Published var typeMass = Int()
    @Published var typePayLoadWeigh = Int()
   
}
