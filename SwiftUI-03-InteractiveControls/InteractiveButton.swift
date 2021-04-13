//
//  InteractiveButton.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by Mike Panitz on 4/11/21.
//

import SwiftUI

struct InteractiveButton: View {
    
    // This was copied from
    // https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-a-tappable-button
    @State private var showDetails = false

    var body: some View {
        VStack(alignment: .center) {
            
            // Respond when clicked (by showing teh details)
            Button("Tap for details",
                   action: { // normal closure
                showDetails.toggle()
            })
            .contentShape(Rectangle())

            if showDetails == true {
                Text("You should follow me on Twitter: @twostraws")
                    .font(.largeTitle)
            }
            
            // We can get fancier with the button if we want:
            Button() { // trailing closure
                showDetails.toggle()
            }
            label: {
                Text("Press Me")
                    .padding(20) .background(Color.red)
            }
            .contentShape(Rectangle())
            
            // double-plus extra bonus fancy!
            Button() {
                showDetails.toggle()
            }
            label: {
                Text("Press Me")
                    .background(Color.red)
                    .padding(20)
                    .background(Color.white)
                    .padding(10)
                    .background(Color.red)
            }
            .contentShape(Rectangle())
        }
    }
}

struct InteractiveButton_Previews: PreviewProvider {
    static var previews: some View {
        InteractiveButton()
    }
}
