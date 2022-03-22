//
//  MenuPrimaryActionSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 21/3/2022.
//

import SwiftUI

struct MenuPrimaryActionSample: View {
  @State private var showingAlert = false
  @State private var alertMessage = ""
  
  func addedTo1() {
    alertMessage = "added to 1"
    showingAlert = true
  }
  func addedTo2() {
    alertMessage = "added to 2"
    showingAlert = true
  }
  func addedTo3() {
    alertMessage = "added to 3"
    showingAlert = true
  }
  func addPrimary() {
    alertMessage = "tapped"
    showingAlert = true
  }
  
  var body: some View {
    Menu {
      Button(action: addedTo1) {
        Label("Add to 1", systemImage: "eyeglasses")
      }
      Button(action: addedTo2) {
        Label("Add to 2", systemImage: "book")
      }
      Button(action: addedTo3) {
        Label("Add to 3", systemImage: "books.vertical")
      }
    } label: {
      Label("Tap or long press", systemImage: "book")
    } primaryAction: {
      addPrimary()
    }.alert("Popup Message: '\(alertMessage)'", isPresented: $showingAlert) {
      Button("OK", role: .cancel) { }
    }
  }
}

struct MenuPrimaryActionSample_Previews: PreviewProvider {
  static var previews: some View {
    MenuPrimaryActionSample()
  }
}
