//
//  HorizontalSettingsView.swift
//  TestForKontur
//
//  Created by Domiik on 18.03.2022.
//

import SwiftUI

struct HorizontalSettingsViewCell: View {
    
   // let rocket: SpaceRocket
    @State var rockets: String
    @State var settings: String
    
    var body: some View {
            VStack {
                Text(rockets)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                Text(settings)
                    .font(.subheadline)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }
            .padding()
            .background(Rectangle().fill(Color( #colorLiteral(red: 0.1294117868, green: 0.1294117868, blue: 0.1294117868, alpha: 1))).frame(width: 96, height: 96) .cornerRadius(30))
     
            .padding()
    }
}


struct HorizontalSettingsViewCell_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalSettingsViewCell(rockets: "229,6", settings: "Высота")
    }
}
