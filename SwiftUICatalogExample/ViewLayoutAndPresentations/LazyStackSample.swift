//
//  LazyStackSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 26/3/2022.
//

import SwiftUI

struct LazyStackSample: View {
  var body: some View {
    ScrollView {
      Text("LazyHStack")
      ScrollView(.horizontal) {
        LazyHStack {
          let colors = stride(from: 0.0, to: 1.0, by: 0.1).map({
            Color(hue: 0.5, saturation: 0.5, brightness: $0)
          })
          RectanglesView(sizeType: .same(shape: .square(width: 100)),
                         colors: colors)
        }
      }
      Divider()
      Text("LazyVStack")
      LazyVStack(spacing: 1) {
        let colors = stride(from: 0.0, to: 1.0, by: 0.02).map({
          Color(hue: 1.0, saturation: 1.0, brightness: $0)
        })
        RectanglesView(sizeType: .same(shape: .rectangle(width: UIScreen.main.bounds.size.width, height: 40)),
                       colors: colors)
      }
      
    }
    .navigationBarTitle("Lazy Stack Samples")
  }
}

struct LazyStackSample_Previews: PreviewProvider {
  static var previews: some View {
    LazyStackSample()
  }
}
