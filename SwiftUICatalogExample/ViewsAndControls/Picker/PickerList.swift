//
//  PickerList.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 24/3/2022.
//

import SwiftUI

struct PickerList: View {
  var body: some View {
    List {
      Section(header: Text("Picker style automatic")) {
        SimplePickerSample()
          .pickerStyle(.automatic)
      }
      Section(header: Text("Picker style segmented")) {
        SimplePickerSample()
          .pickerStyle(.segmented)
      }
      Section(header: Text("Picker style inline")) {
        SimplePickerSample()
          .pickerStyle(.inline)
      }
      Section(header: Text("Picker style menu")) {
        SimplePickerSample()
          .pickerStyle(.menu)
      }
      Section(header: Text("Picker style wheel")) {
        SimplePickerSample()
          .pickerStyle(.wheel)
      }
    }
    .navigationTitle("Picker Samples")
  }
}

struct PickerList_Previews: PreviewProvider {
  static var previews: some View {
    PickerList()
  }
}


