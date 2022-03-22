//
//  MenuLabelSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 21/3/2022.
//

import SwiftUI

struct MenuLabelSample: View {
  let openFile = {
    print("openFile")
  }
  let saveFile = {
    print("saveFile")
  }
  var body: some View {
    Menu {
      Button(action: openFile) {
        Label("Open File", systemImage: "folder")
      }
      Button(action: saveFile) {
        Label("Save File", systemImage: "square.and.arrow.down")
      }
    } label: {
      Label("Menu with label", systemImage: "doc.fill")
    }
  }
}

struct MenuLabelSample_Previews: PreviewProvider {
  static var previews: some View {
    MenuLabelSample()
  }
}
