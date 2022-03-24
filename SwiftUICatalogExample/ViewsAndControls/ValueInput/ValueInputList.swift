//
//  ValueInputList.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 22/3/2022.
//

import SwiftUI

struct ValueInputList: View {
  var body: some View {
    List {
      Section(header: Text("Slider")) {
        SimpleSliderSample()
        AdvancedSliderSample(minValue: 0, maxValue: 100, step: 10)
      }
      Section(header: Text("Stepper")) {
        BehaviorStepperSample()
        RangeStepperSample(range: 1...20, step: 2)
        CustomStepperSample(step: 3)
      }
      Section(header: Text("Toggle")) {
        SimpleToggleSample()
        AdvancedToggleSample()
      }
    }
    .navigationTitle("Value Input Sample")
  }
}

struct ValueInputList_Previews: PreviewProvider {
  static var previews: some View {
    ValueInputList()
  }
}
