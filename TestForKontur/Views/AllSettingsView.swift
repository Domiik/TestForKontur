//
//  AllSettingsView.swift
//  TestForKontur
//
//  Created by Domiik on 18.03.2022.
//

import SwiftUI

struct AllSettingsView: View {
    
    @ObservedObject var viewModel: AllSettingsViewModel
    @State private var showingSheet = false
    @State private var showingSettings = false
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text(viewModel.name)
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    Button {
                        showingSettings.toggle()
                    } label: {
                        Image(systemName: "gear")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding()
                    }
                    .sheet(isPresented: $showingSettings) {
                        SettingsView(viewModel: HorizontalSettingsViewModel(rocket: viewModel.allSettings))
                    }
                }
                
                HorizontalSettingsView(viewModelHorizontalSettings: HorizontalSettingsViewModel(rocket: viewModel.allSettings))
                VerticalSettingsView(viewModel: VerticalSettingsViewModel(verticalSettingsViewModel: viewModel.allSettings))
                Button {
                    showingSheet.toggle()

                } label: {
                    Text("Просмотреть запуски")
                        .font(.title3)
                        .padding()
                        .background(Color( #colorLiteral(red: 0.1294117868, green: 0.1294117868, blue: 0.1294117868, alpha: 1)))
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }
                .fullScreenCover(isPresented: $showingSheet) {
                    LooksStartView(spaceRocetViewModel: viewModel.allSettings)
                }
            }
            
        }
        .background(. black)
        .cornerRadius(25, corners: [.topLeft, .topRight])
        .onAppear {
            
        }
    }
}

struct AllSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        AllSettingsView(viewModel: AllSettingsViewModel(allSettings: SpaceRocket(height: Diameter(meters: 32, feet: 32), diameter: Diameter(meters: 12, feet: 32), mass: Mass(kg: 12, lb: 32), firstStage: FirstStage(thrustSeaLevel: Thrust(kN: 21, lbf: 12), thrustVacuum: Thrust(kN: 23, lbf: 12), reusable: false, engines: 12, fuelAmountTons: 32.32, burnTimeSEC: 2), secondStage: SecondStage(thrust: Thrust(kN: 24, lbf: 11), payloads: Payloads(compositeFairing: CompositeFairing(height: Diameter(meters: 23, feet: 42), diameter: Diameter(meters: 43, feet: 55)), option1: "dsad"), reusable: false, engines: 43, fuelAmountTons: 90.0, burnTimeSEC: 2), engines: Engines(isp: ISP(seaLevel: 23, vacuum: 55), thrustSeaLevel: Thrust(kN: 55, lbf: 63), thrustVacuum: Thrust(kN: 44, lbf: 56), number: 1, type: "re", version: "qw", layout: "dsa", engineLossMax: 6, propellant1: "qw", propellant2: "re", thrustToWeight: 32), landingLegs: LandingLegs(number: 43, material: "wqe"), payloadWeights: [PayloadWeight(id: "dsa", name: "re", kg: 32, lb: 32)], flickrImages: ["ddasd"], name: "dsad", type: "dasd", active: true, stages: 23, boosters: 13, costPerLaunch: 43, successRatePct: 22, firstFlight: "dsad", country: "wqeqw", company: "sdasd", wikipedia: "dsad", spaceRocketDescription: "rewr", id: "sadas")))
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}



struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
