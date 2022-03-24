//
//  AdvancedToggleSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 24/3/2022.
//

import SwiftUI

// Only both toggle isOn=false or either one isOn=true
struct AdvancedToggleSample: View {
  @State private var aToggle = false
  @State private var bToggle = false
  
  var body: some View {
    let aBinding = Binding(
      get: { self.aToggle },
      set: {
        self.aToggle = $0
        
        if $0 == true {
          self.bToggle = false
        }
      }
    )
    
    let bBinding = Binding(
      get: { self.bToggle },
      set: {
        self.bToggle = $0
        
        if $0 == true {
          self.aToggle = false
        }
      }
    )
    
    return VStack {
      Toggle("A toggle", isOn: aBinding)
      Toggle("B toggle", isOn: bBinding)
    }
  }
}

struct AdvancedToggleSample_Previews: PreviewProvider {
  static var previews: some View {
    AdvancedToggleSample()
  }
}
