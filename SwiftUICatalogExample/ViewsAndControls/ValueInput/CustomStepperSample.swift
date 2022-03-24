//
//  CustomStepperSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 24/3/2022.
//

import SwiftUI

struct CustomStepperSample: View {
  @State var value = 0
  var step = 1
  
  func increment() {
    value += step
  }
  
  func decrement() {
    value -= step
  }
  
  var body: some View {
    HStack {
      CustomStepperButton(stepperType: .decrement, isDetectingPress: {
        decrement()
      })
      Text("\(value)")
      CustomStepperButton(stepperType: .increment, isDetectingPress: {
        increment()
      })
    }
  }
}

struct CustomStepperSample_Previews: PreviewProvider {
  static var previews: some View {
    CustomStepperSample()
  }
}


private struct CustomStepperButton: View {
  enum StepperType {
    case increment, decrement
    
    var icon: Image {
      switch self {
      case .increment: return Image(systemName: "plus.circle")
      case .decrement: return Image(systemName: "minus.circle")
      }
    }
  }
  
  @GestureState var pressed = false
  var stepperType: StepperType
  let isDetectingPress: () -> Void
  
  var body: some View {
    ZStack {
      Rectangle()
        .fill(pressed ? Color.blue : Color.green)
        .frame(width: 40, height: 40)
        .cornerRadius(5)
        .gesture(LongPressGesture(minimumDuration: .infinity)
          .updating($pressed) { value, state, transaction in
            state = value
          }
          .onChanged { _ in
            isDetectingPress()
          }
        )
      stepperType.icon
        .foregroundColor(pressed ? .black : .white)
    }
  }
}

