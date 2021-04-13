//
//  InClassActivityPractice.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by Arica Conrad on 4/12/21.
//

import SwiftUI

struct InClassActivityPractice: View {
    
    // These are needed for the true/false
    // interactive buttons.
    @State private var showTrue = false
    @State private var showFalse = false
    
    // These are needed for the interactive text
    // fields.
    @State var userNameInput: String = ""
    @State var userDessertInput: String = ""
    
    
    var body: some View {
        TabView {
            // This is for the Interactive Buttons
            // screen.
            NavigationView {
                VStack {
                    // The question text.
                    Text("Mercury is the hottest planet in the solar system.\n\nTrue or False?")
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(20)
                    
                    // The true button.
                    Button() {
                        showTrue.toggle()
                    }
                    label: {
                        Text("True")
                            .padding(20)
                            .foregroundColor(.black)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("Aqua"), Color("Lavender")]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(40)
                    }
                    
                    // Padding to give some room between the buttons.
                    .padding(20)
                    
                    // If the true button is
                    // pressed, this text will be
                    // displayed.
                    if showTrue {
                        Text("I'm sorry, that's incorrect.\n\nVenus is the hottest planet.")
                            .font(.body)
                            .multilineTextAlignment(.center)
                    }
                    
                    // The false button.
                    Button() {
                        showFalse.toggle()
                    }
                    label: {
                        Text("False")
                            .padding(20)
                            .foregroundColor(.black)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("Lavender"), Color("Aqua")]), startPoint: .top, endPoint: .bottom))
                            .cornerRadius(40)
                    }
                    // Padding to give some room after the buttons.
                    .padding(20)
                    
                    // If the false button is
                    // pressed, this text will be
                    // displayed.
                    if showFalse {
                        Text("That's correct!\n\nVenus is the hottest planet.")
                            .font(.body)
                            .multilineTextAlignment(.center)
                    }
                }
                
                // The title of the current screen.
                .navigationBarTitle("Interactive Buttons", displayMode: .inline)
            }
            // The left bottom tab button.
            .tabItem {
                Text("BUTTONS")
            }
            
            // This is for the Interactive Text
            // Fields screen.
            NavigationView {
                VStack {
                    // This text welcomes the user
                    // and asks for their name.
                    Text("Welcome! What is your name?")
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    // The first text input is
                    // where the user can enter
                    // their name.
                    TextField("Enter your name here", text:$userNameInput)
                        .padding()
                        .border(LinearGradient(gradient: Gradient(colors: [Color("Aqua"), Color("Lavender")]), startPoint: .leading, endPoint: .trailing), width: 5)
                        .padding()
                    
                    // This text displays what the
                    // user inputted as their name.
                    Text("Your name: \(userNameInput)")
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    // A divider to differentiate
                    // the two questions.
                    Divider()
                        .background(Color.black)
                        .padding(30)
                    
                    // This text asks for the
                    // user's favorite dessert.
                    Text("What is your favorite dessert?")
                        .padding()
                    
                    // The second text input is
                    // where the user can enter
                    // their favorite dessert.
                    TextField("Enter your favorite dessert here", text:$userDessertInput)
                        .padding()
                        .border(LinearGradient(gradient: Gradient(colors: [Color("Lavender"), Color("Aqua")]), startPoint: .top, endPoint: .bottom), width: 5)
                        .padding()
                    
                    // This text displays what the
                    // user inputted as their
                    // favorite dessert.
                    Text("Your favorite dessert: \(userDessertInput)")
                        .multilineTextAlignment(.center)
                        .padding()
                }
                // Padding to give some room after
                // the text.
                .padding(20)
                
                // The title of the current screen.
                .navigationBarTitle("Interactive Text Fields", displayMode: .inline)
            }
            // The right bottom tab button.
            .tabItem {
                Text("TEXT FIELDS")
            }
        }
        // This makes the tab buttons and the text
        // input cursor purple instead of the
        // default blue.
        .accentColor(.purple)
    }
}

struct InClassActivityPractice_Previews: PreviewProvider {
    static var previews: some View {
        InClassActivityPractice()
    }
}
