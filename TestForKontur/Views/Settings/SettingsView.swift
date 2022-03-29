//
//  SettingsView.swift
//  TestForKontur
//
//  Created by Domiik on 25.03.2022.
//

import SwiftUI


struct SettingsView: View {
    
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: HorizontalSettingsViewModel
    @ObservedObject var setting: SettingsViewModel
    //@State var h = HorizontalState()
    
    @State var selectionHight = 0
    @State var selectionDiametr = 0
    @State var selectionMass = 0
    @State var selectionTrueMass = 0
    
    
    
    
    init(viewModel: HorizontalSettingsViewModel, settings: SettingsViewModel) {
        self.viewModel = viewModel
        self.setting = settings
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
                        SegmentControl(selection: $setting.typeHeight, items: [item1, item2])
                            .padding()
                    }
                    HStack {
                        Text("Диаметр")
                            .foregroundColor(.white)
                            .padding()
                        Spacer()
                        let item1 = SegmentItem(title: "m", color: Color( #colorLiteral(red: 0.1294117868, green: 0.1294117868, blue: 0.1294117868, alpha: 1)), selectionIndex: 0)
                        let item2 = SegmentItem(title: "ft", color: Color( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), selectionIndex: 1)
                        SegmentControl(selection: $setting.typeDiametr, items: [item1, item2])
                            .padding()
                    }
                    HStack {
                        Text("Масса")
                            .foregroundColor(.white)
                            .padding()
                        Spacer()
                        let item1 = SegmentItem(title: "kg", color: Color( #colorLiteral(red: 0.1294117868, green: 0.1294117868, blue: 0.1294117868, alpha: 1)), selectionIndex: 0)
                        let item2 = SegmentItem(title: "lb", color: Color( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), selectionIndex: 1)
                        SegmentControl(selection: $setting.typeMass, items: [item1, item2])
                            .padding()
                    }
                    HStack {
                        Text("Полезная нагрузка")
                            .foregroundColor(.white)
                            .padding()
                        Spacer()
                        let item1 = SegmentItem(title: "kg", color: Color( #colorLiteral(red: 0.1294117868, green: 0.1294117868, blue: 0.1294117868, alpha: 1)), selectionIndex: 0)
                        let item2 = SegmentItem(title: "kb", color: Color( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), selectionIndex: 1)
                        SegmentControl(selection: $setting.typePayLoadWeigh, items: [item1, item2])
                            .padding()
                    }
                }
                .background(.black)
                .navigationBarTitle(Text("Настройки"), displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Закрыть") {
                            dismiss()
                        }
                        .foregroundColor(.white)
                    }
                }
            }
        }
    }
}



//struct SettingsView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsView()
//    }
//}



