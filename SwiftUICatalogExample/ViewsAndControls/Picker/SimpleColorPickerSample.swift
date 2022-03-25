//
//  SimpleColorPickerSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 24/3/2022.
//

import SwiftUI

struct SimpleColorPickerSample: View {
  @State private var bgColor = Color(.sRGB, red: 0.5, green: 0.5, blue: 0.5)
  var supportOpacity: Bool = true
  
  var body: some View {
    let opacityStr = supportOpacity ? "with opacity" : "without opacity"
    VStack {
      ColorPicker("Color \(opacityStr)",
                  selection: $bgColor,
                  supportsOpacity: supportOpacity)
    }
  }

}

struct SimpleColorPickerSample_Previews: PreviewProvider {
  static var previews: some View {
    SimpleColorPickerSample()
  }
}
