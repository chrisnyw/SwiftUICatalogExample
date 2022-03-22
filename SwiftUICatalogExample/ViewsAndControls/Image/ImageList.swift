//
//  ImageList.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 21/3/2022.
//

import SwiftUI

struct ImageList: View {
  var body: some View {
    List {
      Section("portrait") { PortraitImageSample() }
      Section("landscape") { LandscapeImageSample() }
      Section("circle + broder + shadow") { CircleImageSample() }
    }.navigationTitle("Image Samples")
  }
}

struct ImageList_Previews: PreviewProvider {
  static var previews: some View {
    ImageList()
  }
}


struct PortraitImageSample: View {
  var body: some View {
    Image("portrait")
      .resizable()
      .scaledToFit()
      .cornerRadius(10)
      .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
  }
}

struct LandscapeImageSample: View {
  var body: some View {
    Image("landscape")
      .resizable()
      .scaledToFit()
      .cornerRadius(10)
      .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
  }
}

struct CircleImageSample: View {
  var body: some View {
    Image("portrait")
      .resizable()
      .aspectRatio(1, contentMode: .fill)
      .clipShape(Circle())
      .shadow(radius: 10)
      .overlay(Circle().stroke(Color.red, lineWidth: 5))
      .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
  }
}
