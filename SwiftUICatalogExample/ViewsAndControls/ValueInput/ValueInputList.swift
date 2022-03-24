//
//  ValueInputList.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 22/3/2022.
//

import SwiftUI

struct ValueInputList: View {
  
  
    var body: some View {
      List {
        SimpleSliderSample()
        AdvancedSliderSample(minValue: 0, maxValue: 100, step: 10)
      }
      .navigationTitle("Value Input Sample")
    }
}

struct ValueInputList_Previews: PreviewProvider {
    static var previews: some View {
        ValueInputList()
    }
}
