//
//  LooksStartCellViewModel.swift
//  TestForKontur
//
//  Created by Domiik on 24.03.2022.
//

import Foundation

final class LooksStartCellViewModel: ObservableObject {
    
    @Published var viewModel: ListOfRocketLaunch!
    
    init(viewModel: ListOfRocketLaunch) {
        self.viewModel = viewModel
    }
    
    var startDate: String {
        return getDate(dateGet: viewModel.dateLocal)
    }
    
    var name: String {
        return viewModel.name ?? "nil"
    }
    
    var image: String {
        if viewModel.success ?? false {
            return "success"
        } else {
            return "failure"
        }
    }
    
    
    func getDate(dateGet: String) -> String{
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "d MMMM, yyyy"
        
        if let date = dateFormatterGet.date(from: dateGet) {
            return dateFormatterPrint.string(from: date)
        }
        return "nil"
    }
}
