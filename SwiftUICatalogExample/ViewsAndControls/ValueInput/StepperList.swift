//
//  StepperList.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 24/3/2022.
//

import SwiftUI

struct StepperList: View {
  var body: some View {
    List {
      BehaviorStepperSample()
      RangeStepperSample(range: 1...20, step: 2)
      CustomStepperSample(step: 3)
    }
    .navigationTitle("Stepper Samples")
  }
}

struct StepperList_Previews: PreviewProvider {
  static var previews: some View {
    StepperList()
  }
}
