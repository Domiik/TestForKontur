//
//  ToggleView.swift
//  TestForKontur
//
//  Created by Domiik on 25.03.2022.
//

import SwiftUI

struct SegmentControl : View {

      @Binding var selection : Int
      var items : [SegmentItem]

      var body : some View {

            let width : CGFloat = 50

            return HStack(spacing: 0) {
                  ForEach (items, id: \.self) { item in
                      SegmentButton(text: item.title, width: width, color: item.color, selectionIndex: item.selectionIndex, selection: self.$selection)
                  }
            }.font(.body)
                  .padding(5)
                  .background(Color( #colorLiteral(red: 0.1294117868, green: 0.1294117868, blue: 0.1294117868, alpha: 1)))
                  .cornerRadius(10.0)
      }
}


struct SegmentButton : View {

      var text : String
      var width : CGFloat
      var color : Color
      var selectionIndex = 0
      @Binding var selection : Int

      var body : some View {
            let label = Text(text)
                  .padding(10)
                  .frame(width: width)
                  .background(Color(selection == selectionIndex ? .white : .black))
                  .cornerRadius(10.0)
                  .foregroundColor(Color(selection == selectionIndex ? .black : .white))
                  .font(Font.body.weight(selection == selectionIndex ? .bold : .regular))

            return Button(action: { self.selection = self.selectionIndex }) { label }
      }
}


struct SegmentItem : Hashable {
      var title : String = ""
      var color : Color = Color.white
      var selectionIndex = 0
}
