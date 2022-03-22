//
//  MenuSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 21/3/2022.
//

import SwiftUI

struct MenuSample: View {
  
  let create = {
    print("create")
  }
  let update = {
    print("update")
  }
  let delete = {
    print("delete")
  }
  let copy = {
    print("copy")
  }
  let copyFormatted = {
    print("copy formatted")
  }
  let copyPath = {
    print("copyPath")
  }
  
  var body: some View {
    Menu("Menu and sub menu") {
      Button("Create", action: create)
      Button("Update", action: update)
      Button("Delete…", action: delete)
      Menu("Copy") {
        Button("Copy", action: copy)
        Button("Copy Formatted", action: copyFormatted)
      }
    }
  }
}

struct MenuSample_Previews: PreviewProvider {
  static var previews: some View {
    MenuSample()
  }
}
