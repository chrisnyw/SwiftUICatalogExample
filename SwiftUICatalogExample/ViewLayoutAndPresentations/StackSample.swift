//
//  StackSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 24/3/2022.
//

import SwiftUI

struct StackSample: View {
  
  var body: some View {
    ScrollView {
      Text("HStack")
      HStack {
        RectanglesView(sizeType: .same(shape: .square(width: 100)))
      }
      Divider()
      Text("VStack")
      VStack {
        RectanglesView(sizeType: .ascending(shape: .square(), step: 50))
      }
      Divider()
      Text("ZStack")
      ZStack {
        RectanglesView(sizeType: .descending(shape: .rectangle(width: 150, height: 100), step: 30))
      }
    }
    .navigationBarTitle("Stack Samples")
  }
}

struct StackSample_Previews: PreviewProvider {
  static var previews: some View {
    StackSample()
  }
}
