//
//  RangeStepperSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 24/3/2022.
//

import SwiftUI

struct RangeStepperSample: View {
  @State private var value = 0
  var range = 1...50
  var step = 5
  
  var body: some View {
    Stepper(value: $value,
            in: range,
            step: step) {
      Text("Value: \(value) in \(range.description) " + "stepping by \(step)")
    }
  }
}

struct RangeStepperSample_Previews: PreviewProvider {
  static var previews: some View {
    RangeStepperSample()
  }
}
