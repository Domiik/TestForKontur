//
//  StartStageView.swift
//  TestForKontur
//
//  Created by Domiik on 23.03.2022.
//

import SwiftUI

struct StartStageView: View {
    
    @State var numberStage: String
    
    @State var firstLine: String
    @State var secondLine: String
    @State var thirdLine: String
    
    @State var firstLineAnswer: String
    @State var secondLineAnswer: String
    @State var thirdLineAnswer: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(numberStage)
                .font(.title)
                .foregroundColor(.white)
                .padding()
            HStack {
                Text(firstLine)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                Text(firstLineAnswer )
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding()
            }
            HStack {
                Text(secondLine)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                Text("\(secondLineAnswer) ton")
                    .foregroundColor(.white)
                    .padding()
            }
            HStack {
                Text(thirdLine)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                Text("\(thirdLineAnswer) sec")
                    .foregroundColor(.white)
                    .padding()
            }
        }
        .background(.black)
    }
}

struct StartStageView_Previews: PreviewProvider {
    static var previews: some View {
        StartStageView(numberStage: "First", firstLine: "sadas", secondLine: "dsad", thirdLine: "eqweqw", firstLineAnswer: "sdadcz", secondLineAnswer: "rewt", thirdLineAnswer: "xcvg")
    }
}
