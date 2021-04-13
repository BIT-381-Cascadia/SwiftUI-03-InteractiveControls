//
//  TextFieldExample.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by Mike Panitz on 4/11/21.
//

import SwiftUI

struct TextFieldExample: View {
    @State var usersInput: String = ""
    @State private var showDetails = false;
    var body: some View {
        VStack {
            Button("Tap for details",
                   action: {
                    showDetails.toggle()
                   })
                .contentShape(Rectangle())
            
            if showDetails{
                Text("You should follow me on insta")
                    .font(.largeTitle)
            }

        Text("Please type something,\nthen tap the button")
            TextField("Type your input here", text:$usersInput)
        Text("You typed:\n\(usersInput)")
        }
        .padding()
    }
}

struct TextFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExample()
    }
}
