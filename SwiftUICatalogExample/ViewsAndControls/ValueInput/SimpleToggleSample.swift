//
//  SimpleToggleSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 24/3/2022.
//

import SwiftUI

struct SimpleToggleSample: View {
  @State var toggleText: Bool = false
  @State var toggleLabel: Bool = false
  @State var toggleButton: Bool = false
  
  var body: some View {
    Toggle("Toggle with Text", isOn: $toggleText)
    Toggle(isOn: $toggleLabel) {
      Label("Toggle with Label", systemImage: "togglepower")
    }
    Toggle("Toggle style button", isOn: $toggleButton)
      .toggleStyle(.button)
  }
}

struct SimpleToggleSample_Previews: PreviewProvider {
  static var previews: some View {
    SimpleToggleSample()
  }
}


