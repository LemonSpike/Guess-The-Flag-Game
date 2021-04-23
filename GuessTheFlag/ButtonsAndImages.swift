//
//  ButtonsAndImages.swift
//  GuessTheFlag
//
//  Created by Pranav Kasetti on 29/11/2020.
//

import SwiftUI

struct ButtonsAndImages: View {

  @State var opacity: Double = 1

  var body: some View {
    VStack {
      Button("Tap me!") {
        print("Button was tapped")
        opacity = 0.25
      }
      .opacity(opacity)
      Button(action: {
        print("Button was tapped")
        opacity = 0.25
      }) {
        VStack {
          Text("Tap me!")
            .background(Color.red)
            .accentColor(.green)
          Image(systemName: "pencil")
          Image(decorative: "Estonia")
        }
        .accentColor(.red)
      }
      .opacity(opacity)
      .animation(.linear)
    }
  }
}

struct ButtonsAndImages_Previews: PreviewProvider {
  static var previews: some View {
    ButtonsAndImages()
  }
}
