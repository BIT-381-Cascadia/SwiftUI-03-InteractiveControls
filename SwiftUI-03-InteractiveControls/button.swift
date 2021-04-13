//
//  button.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by Anton Tran on 4/12/21.
//

import SwiftUI

struct button: View {
    @State private var showDetails = false
    @State var usersInput: String = ""

    var body: some View {
        VStack(alignment: .center) {
            
            // Respond when clicked (by showing teh details)


            if showDetails {
                Text("HELLO WORLD")
                    .font(.largeTitle)
            }
            
            // button!
            Button() {
                showDetails.toggle()
            }
            label: {
                Text("Press")
                    .background(Color.black)
                    .padding(30)
                    .background(Color.black)
                    .padding(20)
                    .background(Color.blue)
            }
            .contentShape(Rectangle())
            
            TextField("Type your input here", text:$usersInput)
            Text("You typed:\n\(usersInput)")
        }
        .padding()
    }
    
}


struct button_Previews: PreviewProvider {
    static var previews: some View {
        button()
        
    }
}
