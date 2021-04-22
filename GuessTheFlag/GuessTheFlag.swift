//
//  ButtonStack.swift
//  GuessTheFlag
//
//  Created by Pranav Kasetti on 29/11/2020.
//

import SwiftUI

struct FlagImage: View {

  @State var country: String

  var body: some View {
    Image(country)
    .clipShape(Rectangle())
    .overlay(Rectangle().stroke(Color.black, lineWidth: 1))
    .shadow(color: .black, radius: 2)
  }
}

struct GuessTheFlag: View {

  @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
  @State private var correctAnswer = "Estonia"
  @State private var showingScore = false
  @State private var scoreTitle = ""
  @State private var scoreMessage = ""
  @State private var score = 0
  @State private var degrees: Double = 0

  func askQuestion() {
    countries.shuffle()
    let index = Int.random(in: countries.indices)
    correctAnswer = countries[index]
  }

  var body: some View {
    ScrollView {
      ZStack {
        LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
          .edgesIgnoringSafeArea(.all)
        VStack(spacing: 30) {
          Spacer()
          Text("Tap the flag of")
            .foregroundColor(.white)
          Text(correctAnswer)
            .foregroundColor(.white)
            .font(.largeTitle)
            .fontWeight(.heavy)
          ForEach(countries, id: \.self) { country in
            FlagImage(country: country)
              .onTapGesture {
                degrees = isCorrectAnswer(country: country) ? 360 : 0
                flagTapped(country)
              }
              .rotation3DEffect(
                .init(degrees: isCorrectAnswer(country: country) ? degrees : 0),
                axis: (x: 0.0, y: 1.0, z: 0.0)
              )
              .animation(.easeInOut)
              .alert(isPresented: $showingScore, content: {
                Alert(title: Text(scoreTitle), message: Text(scoreMessage), dismissButton: .default(Text("Continue")) {
                  self.askQuestion()
                  degrees = 0
                })
              })
          }
          Text("Your score is: \(score)")
            .foregroundColor(.white)
          Spacer()
        }
      }
    }
    .edgesIgnoringSafeArea(.all)
  }

  func flagTapped(_ country: String) {
    if isCorrectAnswer(country: country) {
      scoreTitle = "Right!"
      score += 1
    } else {
      scoreTitle = "Wrong!"
    }
    scoreMessage = scoreTitle + " Your score is \(score).\nThat's the flag of \(country)."
    showingScore = true
  }

  func isCorrectAnswer(country: String) -> Bool {
    country == self.correctAnswer
  }
}

struct ButtonStack_Previews: PreviewProvider {
  static var previews: some View {
    GuessTheFlag()
  }
}
