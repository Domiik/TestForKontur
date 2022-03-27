//
//  LooksStartViewCell.swift
//  TestForKontur
//
//  Created by Domiik on 23.03.2022.
//

import SwiftUI

struct LooksStartViewCell: View {
    
    @ObservedObject var viewModel: LooksStartCellViewModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(viewModel.name)
                    .font(.headline)
                    .foregroundColor(.white)
                Text(viewModel.startDate)
                    .font(.subheadline)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
            }
            Spacer()
            Image(viewModel.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
        }
        .frame(width: 311, height: 100)
        .padding()
        .background(Rectangle().fill(Color( #colorLiteral(red: 0.1294117868, green: 0.1294117868, blue: 0.1294117868, alpha: 1))).cornerRadius(20))
    }
}

struct LooksStartViewCell_Previews: PreviewProvider {
    static var previews: some View {
        LooksStartViewCell(viewModel: LooksStartCellViewModel(viewModel: ListOfRocketLaunch(fairings: Fairings(reused: true, recoveryAttempt: false, recovered: false, ships: ["dasdas"]), links: Links(patch: Patch(small: "dasd", large: "rer"), reddit: Reddit(campaign: "err", launch: "qwe", media: "rew", recovery: "wqewq"), flickr: Flickr(small: ["fsdf"], original: ["sdfdsf"]), presskit: "qwe", webcast: "rew", youtubeID: "qwe", article: "qwe", wikipedia: "ewrew"), staticFireDateUTC: "fds", staticFireDateUnix: 2, net: false, window: 3, rocket: Rocket.the5E9D0D95Eda69955F709D1Eb, success: false, failures: [Failure(time: 2, altitude: 1, reason: "ewqe")], details: "qwewq", crew: ["ewqe"], ships: ["rewr"], capsules: ["qwerweq"], payloads: ["rwerew"], launchpad: Launchpad.the5E9E4502F509092B78566F87, flightNumber: 2, name: "wqe", dateUTC: "rewr", dateUnix: 3, dateLocal: "wqewqe", datePrecision: DatePrecision.hour, upcoming: false, cores: [Core(core: "wqewq", flight: 2, gridfins: false, legs: true, reused: false, landingAttempt: false, landingSuccess: false, landingType: LandingType.ocean, landpad: Landpad.the5E9E3032383Ecb554034E7C9)], autoUpdate: false, tbd: false, launchLibraryID: "weqwe", id: "sdwr")))
    }
}
