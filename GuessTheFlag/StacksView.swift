//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Pranav Kasetti on 21/11/2020.
//

import SwiftUI

struct StacksView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 20) {
      Text("Hello, world!")
//        .padding()
      Spacer()
      Text("Hello, world!")
        .padding()
      Spacer()
      HStack(alignment: .center, spacing: 30) {
        Text("Hello, world!")
        Spacer()
        //        .padding()
        Text("Hello, world!")
          .padding()
          .background(Color.red.frame(width: 100, height: 100, alignment: .center))
      }
      ZStack(alignment: .leading) {
        Text("Hello World")
          .foregroundColor(Color.red)
        Text("hi")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      StacksView()
        .environment(\.colorScheme, .dark)
      StacksView()
        .environment(\.colorScheme, .light)
    }
  }
}
