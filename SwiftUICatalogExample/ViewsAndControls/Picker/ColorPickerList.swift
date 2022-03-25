//
//  ColorPickerList.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 24/3/2022.
//

import SwiftUI

struct ColorPickerList: View {
    var body: some View {
      List {
        SimpleColorPickerSample()
        SimpleColorPickerSample(supportOpacity: false)
      }
      .navigationTitle("Color Picker Samples")
    }
}

struct ColorPickerList_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerList()
    }
}
