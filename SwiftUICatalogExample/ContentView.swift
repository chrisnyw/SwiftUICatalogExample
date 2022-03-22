//
//  ContentView.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 19/3/2022.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      NavigationView {
        ComponemtList()
      }.tabItem {
        Image.init(systemName: "list.bullet.circle")
        Text("Components")
      }.tag(0)
    }
  }
}

struct ComponemtList: View {
  var body: some View {
    List {
      Section(header: Text("User Interface")) {
        NavigationLink("View and Controls", destination: ViewAndControlList())
      }
    }.navigationBarTitle("Component")
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
