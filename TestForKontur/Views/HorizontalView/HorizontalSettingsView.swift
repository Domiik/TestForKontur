//
//  HorizontalSettingsView.swift
//  TestForKontur
//
//  Created by Domiik on 18.03.2022.
//

import SwiftUI

struct HorizontalSettingsView: View {
    
    @ObservedObject var viewModelHorizontalSettings: HorizontalSettingsViewModel

    
    init(viewModelHorizontalSettings: HorizontalSettingsViewModel) {
        self.viewModelHorizontalSettings = viewModelHorizontalSettings

    }
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 0) {
                HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.height, settings: "Высота")
                HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.diameterMetr, settings: "Диаметр")
                HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.massKg, settings: "Масса")
                HorizontalSettingsViewCell(rockets: viewModelHorizontalSettings.payloadWeightsKg, settings: "Нагрузка")
                
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
