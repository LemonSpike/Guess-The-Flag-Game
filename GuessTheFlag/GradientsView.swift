//
//  GradientsView.swift
//  GuessTheFlag
//
//  Created by Pranav Kasetti on 29/11/2020.
//

import SwiftUI

struct GradientsView: View {
  var body: some View {
    VStack {
      ZStack {
        LinearGradient(gradient: Gradient(colors: [.white, .red, .blue, .black]), startPoint: .leading, endPoint: .top)
        RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200).opacity(0.7)
      }
      AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
        .opacity(0.4)
        .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .leading, endPoint: .trailing))
    }
  }
}

struct GradientsView_Previews: PreviewProvider {
  static var previews: some View {
    GradientsView()
  }
}
