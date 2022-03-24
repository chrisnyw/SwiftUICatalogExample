//
//  BehaviorStepperSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 24/3/2022.
//

import SwiftUI

struct BehaviorStepperSample: View {
  @State private var value = 0
  let colors: [Color] = [.red, .orange, .yellow, .green,
                         .cyan, .blue, .purple]
  
  func increment() {
    value += 1
    if value >= colors.count { value = 0 }
  }
  
  func decrement() {
    value -= 1
    if value < 0 { value = colors.count - 1 }
  }
  
  var body: some View {
    Stepper {
      Text("Value: \(value) Color: \(colors[value].description)")
    } onIncrement: {
      increment()
    } onDecrement: {
      decrement()
    }
    .foregroundColor(colors[value])
  }
}

struct BehaviorStepperSample_Previews: PreviewProvider {
  static var previews: some View {
    BehaviorStepperSample()
  }
}
