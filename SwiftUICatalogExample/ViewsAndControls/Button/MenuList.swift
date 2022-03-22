//
//  MenuList.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 21/3/2022.
//

import SwiftUI

struct MenuList: View {
  var body: some View {
    List {
      MenuSample()
      MenuLabelSample()
      MenuPrimaryActionSample()
      MenuWithSectionSample()
      MenuWithStyleSample()
    }
    .navigationTitle("Menu Samples")
  }
}

struct MenuList_Previews: PreviewProvider {
  static var previews: some View {
    MenuList()
  }
}
