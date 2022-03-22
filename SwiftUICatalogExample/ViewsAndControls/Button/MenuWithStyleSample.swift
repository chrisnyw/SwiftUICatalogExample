//
//  MenuWithStyleSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 21/3/2022.
//

import SwiftUI

struct MenuWithStyleSample: View {
  var body: some View {
    Menu("Menu with styles") {
      Button{
        print("Add")
      } label: {
        Label("Add", systemImage: "plus")
      }
      Button(role: .destructive,
             action: {},
             label: {
        Label("Delete", systemImage: "trash")
      })
    }.menuStyle(MyMenuStyle())
  }
}

struct MenuWithStyleSample_Previews: PreviewProvider {
    static var previews: some View {
        MenuWithStyleSample()
    }
}

private struct MyMenuStyle: MenuStyle {
  func makeBody(configuration: Configuration) -> some View {
    Menu(configuration)
      .padding(3)
      .border(.orange)
      .foregroundColor(.red)
  }
}
