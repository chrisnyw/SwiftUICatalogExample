//
//  SimpleDatePickerSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 24/3/2022.
//

import SwiftUI

struct SimpleDatePickerSample: View {
  @State private var date = Date()
  
  var body: some View {
    DatePicker(
      "Date",
      selection: $date,
      displayedComponents: [.date]
    )
  }
}

struct SimpleDatePickerSample_Previews: PreviewProvider {
  static var previews: some View {
    SimpleDatePickerSample()
  }
}
