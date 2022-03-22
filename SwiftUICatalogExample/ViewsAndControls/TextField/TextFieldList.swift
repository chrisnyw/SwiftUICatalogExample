//
//  TextFieldList.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 21/3/2022.
//

import SwiftUI

struct TextFieldList: View {
  var body: some View {
    List {
      Section("placeholder") { PlaceholderTextField() }
      Section("email") { EmailTextField() }
      Section("name") { NameComponentTextField() }
      Section("number") { NumberTextField() }
      Section("secure password") { PasswordField() }
    }.navigationTitle("TextField Samples")
  }
}

struct TextFieldList_Previews: PreviewProvider {
  static var previews: some View {
    TextFieldList()
  }
}
