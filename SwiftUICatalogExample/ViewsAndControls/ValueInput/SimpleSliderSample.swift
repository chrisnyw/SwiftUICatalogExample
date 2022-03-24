//
//  SimpleSliderSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 22/3/2022.
//

import SwiftUI

struct SimpleSliderSample: View {
  @State private var speed = 50.0
  @State private var isEditing = false
  
  var body: some View {
    VStack {
      Slider(
        value: $speed,
        in: 0...100,
        onEditingChanged: { editing in
          isEditing = editing
        }
      )
      Text("\(speed)")
        .foregroundColor(isEditing ? .red : .blue)
    }
  }
}

struct SimpleSliderSample_Previews: PreviewProvider {
  static var previews: some View {
    SimpleSliderSample()
  }
}
