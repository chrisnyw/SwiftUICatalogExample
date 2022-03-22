//
//  MenuWithSectionSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 21/3/2022.
//

import SwiftUI

struct MenuWithSectionSample: View {
  var body: some View {
    Menu {
      Section {
        Button(action: {}) {
          Label("Create a file", systemImage: "doc")
        }
        
        Button(action: {}) {
          Label("Create a folder", systemImage: "folder")
        }
      }
      Section(header: Text("Secondary actions")) {
        Button(action: {}) {
          Label("Remove old files", systemImage: "trash")
        }
      }
    } label: {
      Label("Menu with section", systemImage: "plus")
    }
  }
}

struct MenuWithSectionSample_Previews: PreviewProvider {
  static var previews: some View {
    MenuWithSectionSample()
  }
}
