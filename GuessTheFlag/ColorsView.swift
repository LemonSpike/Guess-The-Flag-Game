//
//  ColorsView.swift
//  GuessTheFlag
//
//  Created by Pranav Kasetti on 21/11/2020.
//

import SwiftUI

struct ColorsView: View {
  var body: some View {
    ZStack(alignment: .center) {
      Color.red.frame(width: 200,
                      height: 200,
                      alignment: .center)
      Text("Bye")
      Text("Hello").frame(width: 40, height: 20)
        .alignmentGuide(HorizontalAlignment.center, computeValue: { dimension in
          -60
        })
        .alignmentGuide(VerticalAlignment.center, computeValue: { dimension in
          -80
        })
    }
  }
}

struct ColorsView_Previews: PreviewProvider {
  static var previews: some View {
    ColorsView()
  }
}
