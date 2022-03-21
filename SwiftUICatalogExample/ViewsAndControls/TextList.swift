//
//  TextList.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 21/3/2022.
//

import SwiftUI

struct TextList: View {
  var body: some View {
    List {
      Text("Text Font.system(.largeTitle)").font(Font.system(.largeTitle))
      Text("Text Font.system(.title)").font(Font.system(.title))
      Text("Text Font.system(.title2)").font(Font.system(.title2))
      Text("Text Font.system(.title3)").font(Font.system(.title3))
      Text("Text Font.system(.headline)").font(Font.system(.headline))
      Text("Text Font.system(.subheadline)").font(Font.system(.subheadline))
      Text("Text Font.system(.body)").font(Font.system(.body))
      Text("Text Font.system(.callout)").font(Font.system(.callout))
      Text("Text Font.system(.footnote)").font(Font.system(.footnote))
      Text("Text Font.system(.caption)").font(Font.system(.caption))
    }
    .navigationTitle("Text and Font Samples")
  }
}

struct TextList_Previews: PreviewProvider {
  static var previews: some View {
    TextList()
  }
}
