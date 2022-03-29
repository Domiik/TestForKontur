//
//  SpaceRocketViewModel.swift
//  TestForKontur
//
//  Created by Domiik on 18.03.2022.
//

import Foundation
import SwiftUI
import UIKit

final class SpaceRocketViewModel: ObservableObject {
    
    enum State {
        case idle
        case loading
        case end
    }
    
    @Published var rockets: [SpaceRocket]?
    @Published var alertItem: AlertItem?
    @Published var countRockets: Int?
    @Published private(set) var state = State.idle
    
    private var selectedIndexPath: IndexPath?
    
    public var placeholders = Array(repeating: SpaceRocket(height: Diameter(meters: 32, feet: 32), diameter: Diameter(meters: 12, feet: 32), mass: Mass(kg: 12, lb: 32), firstStage: FirstStage(thrustSeaLevel: Thrust(kN: 21, lbf: 12), thrustVacuum: Thrust(kN: 23, lbf: 12), reusable: false, engines: 12, fuelAmountTons: 32.32, burnTimeSEC: 2), secondStage: SecondStage(thrust: Thrust(kN: 24, lbf: 11), payloads: Payloads(compositeFairing: CompositeFairing(height: Diameter(meters: 23, feet: 42), diameter: Diameter(meters: 43, feet: 55)), option1: "dsad"), reusable: false, engines: 43, fuelAmountTons: 90.0, burnTimeSEC: 2), engines: Engines(isp: ISP(seaLevel: 23, vacuum: 55), thrustSeaLevel: Thrust(kN: 55, lbf: 63), thrustVacuum: Thrust(kN: 44, lbf: 56), number: 1, type: "re", version: "qw", layout: "dsa", engineLossMax: 6, propellant1: "qw", propellant2: "re", thrustToWeight: 32), landingLegs: LandingLegs(number: 43, material: "wqe"), payloadWeights: [PayloadWeight(id: "dsa", name: "re", kg: 32, lb: 32)], flickrImages: ["ddasd"], name: "dsad", type: "dasd", active: true, stages: 23, boosters: 13, costPerLaunch: 43, successRatePct: 22, firstFlight: "dsad", country: "wqeqw", company: "sdasd", wikipedia: "dsad", spaceRocketDescription: "rewr", id: "sadas"), count: 10)
    
    
    
    func getSpaceRockets() {
        state = .loading
        NetworkManager.shared.getRockets { [self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let rockets):
                    self.rockets = rockets
                    state = .end
                case .failure(let error):
                    switch error {
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                        
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                        
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
    
    
  
}
