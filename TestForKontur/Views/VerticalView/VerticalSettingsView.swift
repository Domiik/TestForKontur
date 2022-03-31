//
//  VerticalSettingsView.swift
//  TestForKontur
//
//  Created by Domiik on 18.03.2022.
//

import SwiftUI

struct VerticalSettingsView: View {
    
    @ObservedObject var viewModel: VerticalSettingsViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            VerticalSettingsViewCell(firstLine: "Первый запуск", secondLine: "Страна", thirdLine: "Стоимость запуска", firstLineAnswer: viewModel.firstStart, secondLineAnswer: viewModel.counrty, thirdLineAnswer: viewModel.costStart)
            StartStageView(numberStage: "Первая ступень", firstLine: "Количество двигателей", secondLine: "Количество топлива", thirdLine: "Время сгорания", firstLineAnswer: viewModel.numbersEnginesFirstStage, secondLineAnswer: viewModel.fuelAmountTonsFirstStage, thirdLineAnswer: viewModel.burnTimeSecFirstStage)
            StartStageView(numberStage: "Вторая ступень", firstLine: "Количество двигателей", secondLine: "Количество топлива", thirdLine: "Время сгорания", firstLineAnswer: viewModel.numbersEnginesSecondStage, secondLineAnswer: viewModel.fuelAmountTonsSecondStage, thirdLineAnswer: viewModel.burnTimeSecSecondStage)
        }
        .background(.black)
        
    }
    
    
}

//struct VerticalSettingsView_Previews: PreviewProvider {
//    static var previews: some View {
//        VerticalSettingsView(viewModel: <#T##VerticalSettingsViewModel#>)
//    }
//}
