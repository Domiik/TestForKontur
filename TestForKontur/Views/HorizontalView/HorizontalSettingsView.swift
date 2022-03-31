//
//  HorizontalSettingsView.swift
//  TestForKontur
//
//  Created by Domiik on 18.03.2022.
//

import SwiftUI

struct HorizontalSettingsView: View {
    
    @ObservedObject var viewModelHorizontalSettings: HorizontalSettingsViewModel
    @ObservedObject var setting = SettingsViewModel()
    @State var hight = String()
    
    
    init(viewModelHorizontalSettings: HorizontalSettingsViewModel, settings: SettingsViewModel) {
        self.viewModelHorizontalSettings = viewModelHorizontalSettings
        self.setting = settings
    }
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: -20) {
                if setting.typeHeight == 0 {
                    HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.heightMeter, settings: "Высота, m")
                } else {
                    HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.heightFt, settings: "Высота, ft")
                }
                if setting.typeDiametr == 0 {
                    HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.diameterMetr, settings: "Диаметр, m")
                } else {
                    HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.diameterFt, settings: "Диаметр, ft")
                }
                if setting.typeMass == 0 {
                    HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.massKg, settings: "Масса, kg")
                } else {
                    HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.massLb, settings: "Масса, ft")
                }
                if setting.typePayLoadWeigh == 0 {
                    HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.payloadWeightsKg, settings: "Нагрузка, kg")
                } else {
                    HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.payloadWeightsLb, settings: "Нагрузка, lb")
                }
            }
        }
        .frame(height: 96)
        .padding()
    }
}



//struct HorizontalSettingsView_Previews: PreviewProvider {
//    static var previews: some View {
//        HorizontalSettingsView(viewModelHorizontalSettings: )
//    }
//}
