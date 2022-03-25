//
//  SimplePickerSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 24/3/2022.
//

import SwiftUI

enum Country: String, CaseIterable, Identifiable {
  case america, japan, taiwan
  var id: Self { self }
}

enum Commute: String, CaseIterable, Identifiable {
  case car, bus, train, bicycle
  var id: Self { self }
}

extension Country {
  var suggestedCommute: Commute {
    switch self {
    case .america: return .car
    case .japan: return .train
    case .taiwan: return .bus
    }
  }
}

struct SimplePickerSample: View {
  @State private var selectedCountry: Country = .america
  @State private var suggestedCommute: Commute = .car
  
  var body: some View {
    Picker("Country", selection: $suggestedCommute) {
      ForEach(Country.allCases) { country in
        Text(country.rawValue.capitalized)
          .tag(country.suggestedCommute)
      }
    }
    HStack {
      Text("Suggested Commuting")
      Spacer()
      Text(suggestedCommute.rawValue.capitalized)
        .foregroundStyle(.secondary)
    }
  }
}

struct SimplePickerSample_Previews: PreviewProvider {
  static var previews: some View {
    SimplePickerSample()
  }
}
