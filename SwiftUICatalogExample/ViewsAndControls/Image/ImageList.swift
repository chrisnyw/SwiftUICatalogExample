//
//  ImageList.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 21/3/2022.
//

import SwiftUI

struct ImageList: View {
  var body: some View {
    ScrollView(.vertical, showsIndicators: true, content: {
      PortraitImageSample()
      Divider()
      LandscapeImageSample()
      Divider()
      CircleImageSample()
    })
    .navigationTitle("Image Samples")
  }
}

struct ImageList_Previews: PreviewProvider {
  static var previews: some View {
    ImageList()
  }
}


struct PortraitImageSample: View {
  var body: some View {
    Text("Portrait")
    Image("portrait")
      .resizable()
      .scaledToFit()
      .cornerRadius(10)
      .padding()
  }
}
struct PortraitImageSample_Previews: PreviewProvider {
  static var previews: some View {
    PortraitImageSample()
  }
}

struct LandscapeImageSample: View {
  var body: some View {
    Text("Landscape")
    Image("landscape")
      .resizable()
      .scaledToFit()
      .cornerRadius(10)
      .padding()
  }
}
struct LandscapeImageSample_Previews: PreviewProvider {
  static var previews: some View {
    LandscapeImageSample()
  }
}

struct CircleImageSample: View {
  var body: some View {
    Text("Circle + Broder + Shadow")
    Image("portrait")
      .resizable()
      .aspectRatio(1, contentMode: .fill)
      .clipShape(Circle())
      .shadow(radius: 10)
      .overlay(Circle().stroke(Color.red, lineWidth: 5))
      .padding()
  }
}
struct CircleImageSample_Previews: PreviewProvider {
  static var previews: some View {
    CircleImageSample()
  }
}
