//
//  ToggleList.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 24/3/2022.
//

import SwiftUI

struct ToggleList: View {
  var body: some View {
    List {
    SimpleToggleSample()
    AdvancedToggleSample()
    }
    .navigationTitle("Toggle Samples")
  }
}

struct ToggleList_Previews: PreviewProvider {
  static var previews: some View {
    ToggleList()
  }
}
