//
//  SliderList.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 24/3/2022.
//

import SwiftUI

struct SliderList: View {
  var body: some View {
    List {
      SimpleSliderSample()
      AdvancedSliderSample(minValue: 0, maxValue: 100, step: 10)
    }
    .navigationTitle("Slider Samples")
  }
}

struct SliderList_Previews: PreviewProvider {
  static var previews: some View {
    SliderList()
  }
}
