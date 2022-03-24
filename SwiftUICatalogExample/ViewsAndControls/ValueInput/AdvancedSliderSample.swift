//
//  AdvancedSliderSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 22/3/2022.
//

import SwiftUI

struct AdvancedSliderSample: View {
  var minValue: Double = 0
  var maxValue: Double = 10
  var step: Double = 5
  
  @State private var sliderValue = 50.0
  @State private var isEditing = false
  
  var body: some View {
    VStack {
      Slider(
        value: $sliderValue,
        in: minValue...maxValue,
        step: step
      ) {
        Text("sliderValue")
      } minimumValueLabel: {
        Text(String(format: "%.2f", minValue))
      } maximumValueLabel: {
        Text(String(format: "%.2f", maxValue))
      } onEditingChanged: { editing in
        isEditing = editing
      }
      Text(String(format: "%.2f", sliderValue))
        .foregroundColor(isEditing ? .red : .blue)
    }
    
  }
}

struct AdvancedSliderSample_Previews: PreviewProvider {
  static var previews: some View {
    AdvancedSliderSample()
  }
}
