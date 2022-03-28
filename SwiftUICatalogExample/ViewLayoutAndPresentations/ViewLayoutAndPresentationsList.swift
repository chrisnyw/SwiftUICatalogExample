//
//  ViewLayoutAndPresentationsList.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 24/3/2022.
//

import SwiftUI

struct ViewLayoutAndPresentationsList: View {
  var body: some View {
    List {
      Section(header: Text("Layout Container")) {
        NavigationLink("Stack Sample", destination: StackSample() )
        NavigationLink("Lazy Stack Sample", destination: LazyStackSample() )
        
        NavigationLink("List Sample", destination: ListSample() )
        NavigationLink("ScrollView Sample", destination: ScrollViewSample() )
      }

    }.navigationBarTitle("View Layout and Presentation")
    
  }
}

struct ViewLayoutAndPresentationsList_Previews: PreviewProvider {
  static var previews: some View {
    ViewLayoutAndPresentationsList()
  }
}


