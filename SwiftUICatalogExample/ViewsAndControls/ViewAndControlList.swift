//
//  ViewAndControlList.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 19/3/2022.
//

import Foundation
import SwiftUI

struct ViewAndControlList: View {
  var body: some View {
    List {
//      Section(header: Text("Text Input Output")) {
//        NavigationLink("Text and Font", destination: { TextList() })
//        NavigationLink("TextField", destination: { TextFieldList() })
//        NavigationLink("TextEditor", destination: { TextEditorSample() })
//      }
//      Section(header: Text("Image")) {
//        NavigationLink("Image", destination: { ImageList() })
//      }
//      Section(header: Text("Button")) {
//        NavigationLink("EditButton", destination: { EditButtonSample() })
//        NavigationLink("Menus", destination: { MenuList() })
//        NavigationLink("Links", destination: { LinkList() })
//      }
//      Section(header: Text("Value Input")) {
//        NavigationLink("Sliders", destination: { SliderList() })
//        NavigationLink("Steppers", destination: { StepperList() })
//        NavigationLink("Toggles", destination: { ToggleList() })
//      }
      Section(header: Text("Picker")) {
        NavigationLink("Pickers", destination: { PickerList() })
        NavigationLink("Date Pickers", destination: { DatePickerList() })
        NavigationLink("Color Pickers", destination: { ColorPickerList() })
        
        
      }
    }.navigationTitle("Views and Controls Samples")
  }
}
