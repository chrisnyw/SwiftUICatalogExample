//
//  EditButtonSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 21/3/2022.
//

import SwiftUI

struct EditButtonSample: View {
  @State private var animals = [
    "Cat",
    "Dog",
    "Monkey",
    "Zebra"
  ]
  
  var body: some View {
    List {
      ForEach(animals, id: \.self) { animal in
        Text(animal)
      }
      .onDelete { animals.remove(atOffsets: $0) }
      .onMove { animals.move(fromOffsets: $0, toOffset: $1) }
      Button("Add Animal") {
        animals.append("Animals \(animals.count)")
      }
      .frame(maxWidth: .infinity, alignment: .center)
    }
    .navigationTitle("EditButton Sample")
    .toolbar {
      EditButton()
    }
  }
}

struct EditButtonSample_Previews: PreviewProvider {
  static var previews: some View {
    EditButtonSample()
  }
}
