//
//  LinkList.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 22/3/2022.
//

import SwiftUI

struct LinkList: View {
  var body: some View {
    List {
      LinkSample()
    }
    .navigationTitle("Link Samples")
  }
}

struct LinkList_Previews: PreviewProvider {
  static var previews: some View {
    LinkList()
  }
}




