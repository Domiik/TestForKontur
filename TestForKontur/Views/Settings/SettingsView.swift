//
//  SettingsView.swift
//  TestForKontur
//
//  Created by Domiik on 25.03.2022.
//

import SwiftUI
import Combine

struct SettingsView: View {
    
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: HorizontalSettingsViewModel
    
    
    @State var selectionHight = 0
    @State var selectionDiametr = 0
    @State var selectionMass = 0
    @State var selectionTrueMass = 0
    
    
    
    
    init(viewModel: HorizontalSettingsViewModel) {
        self.viewModel = viewModel
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().barStyle = .default
    }
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Color.black.ignoresSafeArea()
                VStack(spacing: 0) {
                    HStack {
                        Text("Высота")
                            .foregroundColor(.white)
                            .padding()
                        Spacer()
                        let item1 = SegmentItem(title: "m", color: Color( #colorLiteral(red: 0.1294117868, green: 0.1294117868, blue: 0.1294117868, alpha: 1)), selectionIndex: 0)
                        let item2 = SegmentItem(title: "ft", color: Color( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), selectionIndex: 1)
                        SegmentControl(selection: $viewModel.stateHeight, items: [item1, item2])
                            .padding()
                    }
                    HStack {
                        Text("Диаметр")
                            .foregroundColor(.white)
                            .padding()
                        Spacer()
                        let item1 = SegmentItem(title: "m", color: Color( #colorLiteral(red: 0.1294117868, green: 0.1294117868, blue: 0.1294117868, alpha: 1)), selectionIndex: 0)
                        let item2 = SegmentItem(title: "ft", color: Color( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), selectionIndex: 1)
                        SegmentControl(selection: $selectionDiametr, items: [item1, item2])
                            .padding()
                    }
                    HStack {
                        Text("Масса")
                            .foregroundColor(.white)
                            .padding()
                        Spacer()
                        let item1 = SegmentItem(title: "kg", color: Color( #colorLiteral(red: 0.1294117868, green: 0.1294117868, blue: 0.1294117868, alpha: 1)), selectionIndex: 0)
                        let item2 = SegmentItem(title: "lb", color: Color( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), selectionIndex: 1)
                        SegmentControl(selection: $selectionMass, items: [item1, item2])
                            .padding()
                    }
                    HStack {
                        Text("Полезная нагрузка")
                            .foregroundColor(.white)
                            .padding()
                        Spacer()
                        let item1 = SegmentItem(title: "kg", color: Color( #colorLiteral(red: 0.1294117868, green: 0.1294117868, blue: 0.1294117868, alpha: 1)), selectionIndex: 0)
                        let item2 = SegmentItem(title: "kb", color: Color( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), selectionIndex: 1)
                        SegmentControl(selection: $selectionTrueMass, items: [item1, item2])
                            .padding()
                    }
                }
                .background(.black)
                .navigationBarTitle(Text("Настройки"), displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Закрыть") {
                            dismiss()
                            viewModel.height.shuffled()
                        }
                        .foregroundColor(.white)
                    }
                }
            }
        }
        
        
        
        //               return VStack() {
        //                     Spacer()
        //                     Text("Selected Item: \(selection)")
        //                     SegmentControl(selection: $selection, items: [item1, item2])
        //                     Spacer()
        //               }
    }
}



//struct SettingsView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsView()
//    }
//}



