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
            Button("Tap for details") {
                showDetails.toggle()
            }
            .contentShape(Rectangle())

            if showDetails {
                Text("You should follow me \n on instagram @matin.mirzaei")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
            }
            
            // We can get fancier with the button if we want:
           
            Button() {
                showDetails.toggle()
                
            }
            label: {
                Text("PRESS ME")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    .padding(20) .background(Color.blue)
                    .border(Color.white, width: 6)
        
            }
            
            .contentShape(Rectangle())
            }
            
            // double-plus extra bonus fancy!
            Button() {
                showDetails.toggle()
            }
            label: {
                Text("Press For Info")
                    .foregroundColor(.purple)
                    .font(.title)
                    .padding()
                    .border(Color.purple, width: 8)
            }
            .contentShape(Rectangle())
        }
    
}

struct InteractiveButton_Previews: PreviewProvider {
    static var previews: some View {
        InteractiveButton()
    }
}
