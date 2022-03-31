//
//  VerticalSettingsViewCell.swift
//  TestForKontur
//
//  Created by Domiik on 18.03.2022.
//

import SwiftUI


struct VerticalSettingsViewCell: View {
    
    @State var firstLine: String
    @State var secondLine: String
    @State var thirdLine: String
    
    @State var firstLineAnswer: String
    @State var secondLineAnswer: String
    @State var thirdLineAnswer: String
    
    var body: some View {
        VStack {
            HStack {
                Text(firstLine)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                Text(firstLineAnswer)
                    .foregroundColor(.white)
                    .padding()
            }
            HStack {
                Text(secondLine)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                Text(secondLineAnswer)
                    .foregroundColor(.white)
                    .padding()
            }
            HStack {
                Text(thirdLine)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                Text(thirdLineAnswer)
                    .foregroundColor(.white)
                    .padding()
            }
        }
        .background(.black)
    }
}

struct VerticalSettingsViewCell_Previews: PreviewProvider {
    static var previews: some View {
        VerticalSettingsViewCell(firstLine: "sadas", secondLine: "dsad", thirdLine: "eqweqw", firstLineAnswer: "sdadcz", secondLineAnswer: "rewt", thirdLineAnswer: "xcvg")
    }
}
