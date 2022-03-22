//
//  TextEditorSample.swift
//  SwiftUICatalogExample
//
//  Created by Ying Wai Ng on 21/3/2022.
//

import SwiftUI

struct TextEditorSample: View {
  @State private var fullText: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et elit sit amet mauris finibus rutrum quis ut ipsum. Pellentesque dictum nunc fringilla aliquam tempor. Ut enim nunc, feugiat quis massa quis, porta euismod metus. In convallis non lacus non sagittis. Curabitur mattis vehicula rutrum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut luctus arcu faucibus lorem commodo, nec accumsan augue efficitur. Suspendisse a enim ut odio blandit vehicula. Mauris ut metus purus. Vestibulum molestie ullamcorper rhoncus. Duis tellus turpis, ullamcorper vitae consectetur ut, eleifend non ante. Donec a nulla erat. Quisque hendrerit arcu quis sem tempor, sed suscipit quam vestibulum. Nunc pellentesque odio nec semper aliquet. Nullam pretium lectus gravida eros ultricies, vitae vulputate tellus feugiat.\n\nCurabitur quis felis eu metus laoreet interdum sit amet eu neque. Aenean finibus, tortor a gravida sodales, ante diam pharetra dui, in laoreet sem nulla ut massa. In ac mattis massa. Maecenas nec augue dignissim arcu hendrerit euismod. Vivamus nec felis lacinia, viverra libero sed, semper lectus. Praesent nec blandit ante. Pellentesque vehicula diam eget lacus rutrum tempus et vel dui. Aenean eget urna sit amet sapien laoreet ullamcorper vel vitae sem. Suspendisse luctus interdum quam. Suspendisse suscipit, neque in consectetur euismod, libero dui vehicula nisl, pretium porta eros tellus vel arcu. Aenean ac libero odio. Ut vitae nulla vel leo ullamcorper imperdiet.\n\nDuis sem erat, commodo ut feugiat non, euismod nec purus. Sed in quam vel felis sagittis mollis. Integer ut ante massa. Vestibulum a sapien et nunc dignissim pharetra. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eget accumsan dui, non varius nisi. Vivamus laoreet, orci eu posuere ultricies, lectus arcu pellentesque arcu, nec fringilla diam elit ac sapien. Proin elit arcu, venenatis vitae tempor in, venenatis consectetur arcu. Maecenas suscipit ex in ligula ornare imperdiet. Duis egestas metus sapien, non elementum nisl tempus tincidunt. Vestibulum scelerisque luctus urna quis convallis.\n\nFusce gravida eleifend elit, lacinia rutrum ligula tempus sed. Cras imperdiet ex elit, ac accumsan enim gravida at. Curabitur feugiat ipsum at imperdiet volutpat. Phasellus a malesuada nunc, quis vulputate tortor. Vestibulum in lorem vel dui posuere accumsan. Pellentesque convallis euismod arcu, non hendrerit elit condimentum non. Proin aliquam porttitor risus, a pharetra eros lobortis eu. Curabitur blandit arcu eget dui gravida mollis. Fusce ac mi nec risus volutpat euismod. Suspendisse id volutpat purus, vel ultricies nulla. Nam et tincidunt quam.\n\nMaecenas tempor, nisi nec elementum condimentum, leo tellus aliquam turpis, sed lacinia quam sapien quis felis. Aliquam eu dignissim massa. Integer interdum odio non risus cursus ultrices. Ut consequat cursus nulla in blandit. Vivamus porta neque et dignissim gravida. Sed vehicula mi turpis, in interdum quam aliquam vitae. Suspendisse feugiat hendrerit pellentesque. Mauris congue massa a dui viverra, nec accumsan mauris mattis."
  
  var body: some View {
    TextEditor(text: $fullText)
      .foregroundColor(Color.gray)
      .font(.custom("HelveticaNeue", size: 13))
      .lineSpacing(5)
      .navigationTitle("TextEditorSample")
  }
}

struct TextEditorSample_Previews: PreviewProvider {
  static var previews: some View {
    TextEditorSample()
  }
}
