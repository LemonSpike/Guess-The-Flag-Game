//
//  ButtonsAndImages.swift
//  GuessTheFlag
//
//  Created by Pranav Kasetti on 29/11/2020.
//

import SwiftUI

struct ButtonsAndImages: View {
  var body: some View {
    VStack {
      Button("Tap me!") {
        print("Button was tapped")
      }
      Button(action: {
        print("Button was tapped")
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
    }
  }
}

struct ButtonsAndImages_Previews: PreviewProvider {
  static var previews: some View {
    ButtonsAndImages()
  }
}
