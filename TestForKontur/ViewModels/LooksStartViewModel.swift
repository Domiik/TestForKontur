//
//  LooksStartViewModel.swift
//  TestForKontur
//
//  Created by Domiik on 23.03.2022.
//

import Foundation


final class LooksStartViewModel: ObservableObject {
    
    enum State {
        case idle
        case loading
        case end
    }
    
    @Published var starts: [ListOfRocketLaunch]?
    @Published var alertItem: AlertItem?
    @Published private(set) var state = State.idle

    
    
    public var placeholders = Array(repeating: ListOfRocketLaunch(fairings: Fairings(reused: true, recoveryAttempt: false, recovered: false, ships: ["dasdas"]), links: Links(patch: Patch(small: "dasd", large: "rer"), reddit: Reddit(campaign: "err", launch: "qwe", media: "rew", recovery: "wqewq"), flickr: Flickr(small: ["fsdf"], original: ["sdfdsf"]), presskit: "qwe", webcast: "rew", youtubeID: "qwe", article: "qwe", wikipedia: "ewrew"), staticFireDateUTC: "fds", staticFireDateUnix: 2, net: false, window: 3, rocket: Rocket.the5E9D0D95Eda69955F709D1Eb, success: false, failures: [Failure(time: 2, altitude: 1, reason: "ewqe")], details: "qwewq", crew: ["ewqe"], ships: ["rewr"], capsules: ["qwerweq"], payloads: ["rwerew"], launchpad: Launchpad.the5E9E4502F509092B78566F87, flightNumber: 2, name: "wqe", dateUTC: "rewr", dateUnix: 3, dateLocal: "wqewqe", datePrecision: DatePrecision.hour, upcoming: false, cores: [Core(core: "wqewq", flight: 2, gridfins: false, legs: true, reused: false, landingAttempt: false, landingSuccess: false, landingType: LandingType.ocean, landpad: Landpad.the5E9E3032383Ecb554034E7C9)], autoUpdate: false, tbd: false, launchLibraryID: "weqwe", id: "sdwr"), count: 10)
    
    
    
    
    
    func getStartsRockets(id: String) {
        state = .loading
        NetworkManager.shared.getStarts { [self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let starts):
                    let startFilter = starts.filter {
                        $0.rocket.rawValue == id
                        
                    }
                    self.starts = startFilter
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
    
   
    
    //    func getStartsOnId(id: String) {
    //        guard let starts = starts else {
    //            print("exit start")
    //            return
    //        }
    //        for start in starts {
    //            if start.rocket.rawValue == id {
    //
    //
    //            }
    //        }
    //        print(startsFilter)
    //        print("exit")
    //    }
    
    
    //    var name: String {
    //        return looksStartViewModel.name ?? "nil"
    //    }
}
