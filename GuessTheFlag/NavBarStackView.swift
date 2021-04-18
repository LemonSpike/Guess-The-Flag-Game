//
//  NavBarStackView.swift
//  GuessTheFlag
//
//  Created by Pranav Kasetti on 21/11/2020.
//

import SwiftUI

struct NavBarStackView: View {
  var body: some View {
    NavigationView {
      VStack(alignment: .center, spacing: 12) {
        Text("Lorem ipsum nunc fermentum euismod. asdklda")
          .background(Color.gray)
          .navigationBarTitle("Title")
          .navigationBarItems(leading: Button("Hello"){}, trailing: Button("World"){})
          .minimumScaleFactor(0.5)
          .multilineTextAlignment(.center)
        HStack(spacing: 20) {
          Text("Wassup lads.")
          Text("This is another text view.")
        }
        Spacer()
        ZStack(alignment: .leading) {
          Text("This is inside a stack")
          Text("Hello World")
        }
        Spacer()
        VStack(alignment: .center) {
          HStack {
            Rectangle()
              .foregroundColor(.blue)
            Rectangle()
              .foregroundColor(.blue)
            Rectangle()
              .foregroundColor(.blue)
          }
          HStack {
            Rectangle()
              .foregroundColor(.blue)
            Rectangle()
              .foregroundColor(.blue)
            Rectangle()
              .foregroundColor(.blue)
          }
          HStack {
            Rectangle()
              .foregroundColor(.blue)
            Rectangle()
              .foregroundColor(.blue)
            Rectangle()
              .foregroundColor(.blue)
          }
        }
      }
      //make it fill the width
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

struct NavBarStackView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarStackView()
    }
}
