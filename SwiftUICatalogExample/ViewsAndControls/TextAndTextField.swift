//
//  TextAndTextField.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 19/3/2022.
//

import Foundation
import SwiftUI

struct TextAndTextField: View {
  var body: some View {
    List {
      Section(header: Text("Text and TextField")) {
        NavigationLink("Text and Font", destination: { TextList() })
        NavigationLink("TextField", destination: { TextFieldList() })
        NavigationLink("TextEditor", destination: { TextEditorSample() })
      }
      Section(header: Text("Image")) {
        NavigationLink("Image", destination: { ImageList() })
      }
    }.navigationTitle("Views and Controls Samples")
  }
}
