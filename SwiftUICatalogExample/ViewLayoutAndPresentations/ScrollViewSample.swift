//
//  ScrollViewSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 26/3/2022.
//

import SwiftUI

struct ScrollViewSample: View {
  var body: some View {
    ScrollView {
      Text("Vertical ScrollView")
      RectanglesView(sizeType: .same(shape: .square(width: 200)),
                     colors: [.brown, .mint, .teal])
      Divider()
      Text("Horizontal ScrollView")
      ScrollView(.horizontal) {
        HStack {
          RectanglesView(sizeType: .same(shape: .square(width: 200)),
                         colors: [.orange, .pink, .cyan, .indigo])
        }
      }
    }
    .navigationBarTitle("ScrollView Sample")
  }
}

struct ScrollViewSample_Previews: PreviewProvider {
  static var previews: some View {
    ScrollViewSample()
  }
}
