//
//  NameComponentTextField.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 21/3/2022.
//

import SwiftUI

struct NameComponentTextField: View {
  @State private var nameComponents = PersonNameComponents()
  
  var body: some View {
    TextField(
      "name text field",
      value: $nameComponents,
      format: .name(style: .medium)
    )
    .onSubmit {
      validate(components: nameComponents)
    }
    .disableAutocorrection(true)
    .border(.secondary)
    Text("name result: \(nameComponents.debugDescription)")
    
  }
  
  func validate(components: PersonNameComponents) {
    print("\(components.description)")
  }
}

struct NameComponentTextField_Previews: PreviewProvider {
  static var previews: some View {
    NameComponentTextField()
  }
}
