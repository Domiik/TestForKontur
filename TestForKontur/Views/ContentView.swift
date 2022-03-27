//
//  ContentView.swift
//  TestForKontur
//
//  Created by Domiik on 18.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = SpaceRocketViewModel()
    
    
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .white
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.white.withAlphaComponent(0.2)
    }
    
    @State private var selectedPage = 0
    
    var body: some View {
        switch viewModel.state {
        case .idle:
            Color.clear.onAppear(perform: viewModel.getSpaceRockets)
        case .loading:
            LoadingView()
        case .end:
        TabView {
            ForEach(viewModel.rockets ?? viewModel.placeholders, id: \.id) { rocket in
                ScrollView {
                    VStack(alignment: .center, spacing: -100) {
                        Image("Falcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        AllSettingsView(viewModel: AllSettingsViewModel(allSettings: rocket))
                    }
                    .tag(0)
                    .background(.black)
                    .tabItem {
                        Image(systemName: "dot.square")
                    }
                
                }
                .background(.black)
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .edgesIgnoringSafeArea(.all)
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
