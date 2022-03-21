//
//  NumberTextField.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 21/3/2022.
//

import SwiftUI
import Combine

struct NumberTextField: View {
  @State private var number: String = "0"
  
  var body: some View {
    TextField("number text field", text: $number)
      .keyboardType(.numberPad)
      .onReceive(Just(number)) { newValue in
        let filtered = newValue.filter { "0123456789".contains($0) }
        if filtered != newValue {
          self.number = filtered
        }
      }
  }
  
  struct NumberTextField_Previews: PreviewProvider {
    static var previews: some View {
      NumberTextField()
    }
  }
}
