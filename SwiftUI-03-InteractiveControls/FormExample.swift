//
//  FormExample.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by Sean Jones on 4/14/21.
//

import SwiftUI

struct FormExample: View {
    
    @State var usersInput: String = ""
    @State var usersInput1: String = ""
    
    var body: some View {
        VStack {
            Text("Form Example")
            Spacer()
              HStack {
              
            }
        Text("First Name")
        TextField("Type first name", text:$usersInput)
        Text("You typed:\n\(usersInput)")
            Text("Last Name")
            TextField("Type last name", text: $usersInput1)
            Text("You typed:\n\(usersInput1)")
        }
        .padding()
        .background(Color.gray)
    }
}




