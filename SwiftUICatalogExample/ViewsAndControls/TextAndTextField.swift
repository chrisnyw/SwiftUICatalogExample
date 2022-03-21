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
        NavigationLink("text and font", destination: { TextList() })
        NavigationLink("text field", destination: { TextFieldList() })
      }
    }.navigationTitle("Views and Controls Samples")
  }
}
