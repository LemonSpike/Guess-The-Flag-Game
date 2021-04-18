//
//  ColorTutorial.swift
//  GuessTheFlag
//
//  Created by Pranav Kasetti on 29/11/2020.
//

import SwiftUI

struct ColorTutorial: View {
    var body: some View {
      ZStack(alignment: .center) {
        Color(.sRGB, red: 1, green: 0.3, blue: 0.7, opacity: 1).edgesIgnoringSafeArea(.all)
        Text("This is cool.")
        Text("Hello world mr bapuji")
          .background(Color.blue).frame(alignment: .trailing)
      }
    }
}

struct ColorTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ColorTutorial()
    }
}
