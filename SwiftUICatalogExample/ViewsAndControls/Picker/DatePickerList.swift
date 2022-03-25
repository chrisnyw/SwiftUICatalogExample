//
//  DatePickerList.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 24/3/2022.
//

import SwiftUI

struct DatePickerList: View {
  var body: some View {
    List {
      Section(header: Text("Simple Date Picker")) {
        SimpleDatePickerSample()
      }
      Section(header: Text("Range and Style .automatic")) {
        RangeDatePickerSample()
      }
      Section(header: Text("Range and Style .graphical")) {
        RangeDatePickerSample()
          .datePickerStyle(.graphical)
          .applyTextColor(.green)
      }
      Section(header: Text("Range and Style .compact")) {
        RangeDatePickerSample()
          .datePickerStyle(.compact)
          .accentColor(.orange)
      }
      Section(header: Text("Range and Style .wheel")) {
        RangeDatePickerSample()
          .datePickerStyle(.wheel)
          .applyTextColor(.pink)
      }
    }
    .navigationTitle("Date Picker Samples")
  }
}

struct DatePickerList_Previews: PreviewProvider {
  static var previews: some View {
    DatePickerList()
  }
}


private extension View {
  @ViewBuilder func applyTextColor(_ color: Color) -> some View {
    if UITraitCollection.current.userInterfaceStyle == .light {
      self.colorInvert().colorMultiply(color)
    } else {
      self.colorMultiply(color)
    }
  }
}
