//
//  LooksStartView.swift
//  TestForKontur
//
//  Created by Domiik on 23.03.2022.
//

import SwiftUI

struct LooksStartView: View {
    
    @StateObject private var viewModel = LooksStartViewModel()
    var spaceRocetViewModel: SpaceRocket
    
    @Environment(\.dismiss) var dismiss
    
    init(spaceRocetViewModel: SpaceRocket) {
        self.spaceRocetViewModel = spaceRocetViewModel
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().barTintColor = .black
    }
    
    var body: some View {
        switch viewModel.state {
        case .idle:
            Color.clear.onAppear {
                viewModel.getStartsRockets(id: spaceRocetViewModel.id)
            }
        case .loading:
            LoadingView()
        case .end:
            NavigationView {
                ZStack {
                    Color.black.edgesIgnoringSafeArea([.all])
                    ScrollView(showsIndicators: false) {
                        ForEach(viewModel.starts ?? viewModel.placeholders, id: \.id) { start in
                            LooksStartViewCell(viewModel: LooksStartCellViewModel(viewModel: start))
                        }
                    }
                    .navigationTitle(Text(spaceRocetViewModel.name))
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button("Назад") {
                                dismiss()
                            }
                            .foregroundColor(.white)
                        }
                    }
                }
            }
        }
    }
}


struct LooksStartView_Previews: PreviewProvider {
    static var previews: some View {
        LooksStartView(spaceRocetViewModel: SpaceRocket(height: Diameter(meters: 32, feet: 32), diameter: Diameter(meters: 12, feet: 32), mass: Mass(kg: 12, lb: 32), firstStage: FirstStage(thrustSeaLevel: Thrust(kN: 21, lbf: 12), thrustVacuum: Thrust(kN: 23, lbf: 12), reusable: false, engines: 12, fuelAmountTons: 32.32, burnTimeSEC: 2), secondStage: SecondStage(thrust: Thrust(kN: 24, lbf: 11), payloads: Payloads(compositeFairing: CompositeFairing(height: Diameter(meters: 23, feet: 42), diameter: Diameter(meters: 43, feet: 55)), option1: "dsad"), reusable: false, engines: 43, fuelAmountTons: 90.0, burnTimeSEC: 2), engines: Engines(isp: ISP(seaLevel: 23, vacuum: 55), thrustSeaLevel: Thrust(kN: 55, lbf: 63), thrustVacuum: Thrust(kN: 44, lbf: 56), number: 1, type: "re", version: "qw", layout: "dsa", engineLossMax: 6, propellant1: "qw", propellant2: "re", thrustToWeight: 32), landingLegs: LandingLegs(number: 43, material: "wqe"), payloadWeights: [PayloadWeight(id: "dsa", name: "re", kg: 32, lb: 32)], flickrImages: ["ddasd"], name: "dsad", type: "dasd", active: true, stages: 23, boosters: 13, costPerLaunch: 43, successRatePct: 22, firstFlight: "dsad", country: "wqeqw", company: "sdasd", wikipedia: "dsad", spaceRocketDescription: "rewr", id: "sadas"))
    }
}
