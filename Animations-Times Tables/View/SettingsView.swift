//
//  SettingsView.swift
//  Animations-Times Tables
//
//  Created by Randy Messo on 9/9/25.
//


import SwiftUI

struct SettingsView: View {
    @State private var topTableNumber = 2
    @State private var numberOfQuestions = 5
    
    var body: some View {
        VStack {
            List {
                Section {
                    Text("Select Wha times tables you want to play")
                    Stepper(value: $topTableNumber, in: 2...12) {
                        Text("Lets do times tables of 2 - \(self.topTableNumber)")
                    }
                }
                
                Section {
                    Text("How many questions would you like to answer?")
                    Picker("Number of questions", selection: $numberOfQuestions) {
                        ForEach(5...50, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.menu)
                }
            }
            NavigationStack {
                NavigationLink("Start Game!", destination: GameView(numberOfQuestion: numberOfQuestions, topTableNumber: topTableNumber))
            }
        }
        .navigationBarBackButtonHidden()
    }
}