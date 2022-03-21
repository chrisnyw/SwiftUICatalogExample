//
//  PlaceholderTextField.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 21/3/2022.
//

import SwiftUI

struct PlaceholderTextField: View {
  @State private var inputText: String = ""
  
  var body: some View {
    TextField("text field placeholder", text: $inputText)
    Text("result: \(inputText)")
  }
}

struct PlaceholderTextField_Previews: PreviewProvider {
  static var previews: some View {
    PlaceholderTextField()
  }
}
