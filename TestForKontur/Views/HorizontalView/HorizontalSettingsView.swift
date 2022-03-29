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
            HStack(alignment: .center, spacing: 0) {
                if setting.typeHeight == 0 {
                    HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.heightMeter, settings: "Высота")
                } else {
                    HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.heightFt, settings: "Высота")
                }
                if setting.typeDiametr == 0 {
                    HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.diameterMetr, settings: "Диаметр")
                } else {
                    HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.diameterFt, settings: "Диаметр")
                }
                if setting.typeMass == 0 {
                    HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.massKg, settings: "Масса")
                } else {
                    HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.massLb, settings: "Масса")
                }
                if setting.typePayLoadWeigh == 0 {
                    HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.payloadWeightsKg, settings: "Нагрузка")
                } else {
                    HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.payloadWeightsLb, settings: "Нагрузка")
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
