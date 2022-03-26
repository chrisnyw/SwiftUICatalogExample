//
//  RectanglesView.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 26/3/2022.
//

import SwiftUI

struct RectanglesView: View {
  enum ShapeType {
    case square(width: Double = 50)
    case rectangle(width: Double = 50, height: Double = 50)
    
    func view(offset: Double = 1) -> some View {
      switch self {
      case .square(let width):
        return Rectangle().frame(width: width + offset, height: width + offset)
      case .rectangle(let width, let height):
        return Rectangle().frame(width: width + offset, height: height + offset)
      }
    }
  }
  
  enum SizeType {
    case same(shape: ShapeType = .square(width: 50))
    case ascending(shape: ShapeType = .square(width: 50), step: Double = 50)
    case descending(shape: ShapeType = .square(width: 50), step: Double = 50)
  }
  
  var sizeType: SizeType = .same()
  var colors: [Color] = [.pink, .orange, .green]
  
  var body: some View {
    ForEach(Array(colors.enumerated()), id: \.offset) { index, color in
      switch sizeType {
      case .same(let shape):
        shape.view().foregroundColor(color)
      case .ascending(let shape, let step):
        shape.view(offset: step * Double(index)).foregroundColor(color)
      case .descending(let shape, let step):
        shape.view(offset: -(step * Double(index))).foregroundColor(color)
      }
    }
  }
}

struct RectanglesView_Previews: PreviewProvider {
  static var previews: some View {
    RectanglesView()
  }
}
