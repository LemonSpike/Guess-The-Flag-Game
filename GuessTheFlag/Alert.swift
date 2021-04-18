//
//  Alert.swift
//  GuessTheFlag
//
//  Created by Pranav Kasetti on 29/11/2020.
//

import SwiftUI

struct AlertView: View {

  @State private var showingAlert = false

  var body: some View {
    Button("Show Alert") {
      self.showingAlert = true
    }
    .accentColor(.red)
    .alert(isPresented: $showingAlert) {
      Alert(title: Text("Hello SwiftUI!").foregroundColor(.blue), message: Text("This is some detail message").foregroundColor(.red), dismissButton: .default(Text("OK")))
    }
  }
}

struct Alert_Previews: PreviewProvider {
  static var previews: some View {
    AlertView()
  }
}
