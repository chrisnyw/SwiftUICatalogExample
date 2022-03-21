//
//  EmailTextField.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 21/3/2022.
//

import SwiftUI

struct EmailTextField: View {
  @State private var username: String = ""
  @FocusState private var emailFieldIsFocused: Bool
  
  var body: some View {
    TextField(
      "email text field",
      text: $username
    )
    .focused($emailFieldIsFocused)
    .onSubmit {
      validate(name: username)
    }
    .textInputAutocapitalization(.never)
    .disableAutocorrection(true)
    
    Text("email result: \(username)")
      .foregroundColor(emailFieldIsFocused ? .red : .blue)
  }
  
  func validate(name: String) {
    print("validate name \(name)")
  }
}

struct EmailTextField_Previews: PreviewProvider {
  static var previews: some View {
    EmailTextField()
  }
}
