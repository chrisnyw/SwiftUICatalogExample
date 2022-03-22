//
//  LinkSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 22/3/2022.
//

import SwiftUI

struct LinkSample: View {
  @Environment(\.openURL) var openURL
  let url: String = "https://google.com"
  
  
  var body: some View {
    Link("Link with font and color", destination: URL(string: url)!)
      .font(.title)
      .foregroundColor(.red)
    Link(destination: URL(string: url)!) {
      Image(systemName: "link.circle.fill")
        .font(.largeTitle)
    }
    Link(destination: URL(string: url)!) {
      VStack {
        Image(systemName: "paperplane")
          .font(.largeTitle)
        Text("Link with image and text!")
      }
    }
    Link(destination: URL(string: url)!) {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.pink)
            .frame(minHeight: 40, alignment: .center)
            .padding()
    }
    Button("A button instead of link") {
      openURL(URL(string: "https://www.apple.com")!)
    }
  }
}

struct LinkSample_Previews: PreviewProvider {
    static var previews: some View {
        LinkSample()
    }
}
