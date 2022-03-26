//
//  ListSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 26/3/2022.
//

import SwiftUI

struct ListSample: View {
  var body: some View {
    List {
      ForEach((1...100), id: \.self) {
        Text("Item: \($0)")
      }
    }.navigationBarTitle("List Sample")
  }
}

struct ListSample_Previews: PreviewProvider {
  static var previews: some View {
    ListSample()
  }
}
