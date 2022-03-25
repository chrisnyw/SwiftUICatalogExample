//
//  RangeDatePickerSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 24/3/2022.
//

import SwiftUI

struct RangeDatePickerSample: View {
  @State private var date = Date()
  
  let dateRange: ClosedRange<Date> = {
    let calendar = Calendar.current
    let startComponents = DateComponents(year: 2022, month: 1, day: 15)
    let now = Date.now
    return calendar.date(from:startComponents)!
    ...
    now
  }()
  
  var body: some View {
    DatePicker(
      "Date",
      selection: $date,
      in: dateRange,
      displayedComponents: [.date, .hourAndMinute]
    )
  }
}

struct RangeDatePickerSample_Previews: PreviewProvider {
  static var previews: some View {
    RangeDatePickerSample()
  }
}
