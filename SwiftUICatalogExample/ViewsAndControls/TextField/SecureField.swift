//
//  PasswordField.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 21/3/2022.
//

import SwiftUI

struct PasswordField: View {
  @State private var inputText: String = ""
  
  var body: some View {
    SecureField("secure field", text: $inputText)
    Text("input: " + inputText)
  }
}

struct SecureField_Previews: PreviewProvider {
  static var previews: some View {
    PasswordField()
  }
}

