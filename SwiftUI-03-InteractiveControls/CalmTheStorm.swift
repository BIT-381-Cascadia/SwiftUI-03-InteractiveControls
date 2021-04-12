//
//  CalmTheStorm.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by Student Account on 4/12/21.
//

import SwiftUI


struct CalmTheStorm: View {
    @State private var showDetails = false
    
    var body: some View {
    
            VStack(alignment: .center) {
                
                // Respond when clicked (by showing teh details)
                
                // We can get fancier with the button if we want:
                Button(action: {
                }) {
                    HStack {
                        Image(systemName: "flame")
                            .font(.title)
                        Text("Wildfire")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(40)
                }
                // double-plus extra bonus fancy!
                Button() {
                    showDetails.toggle()
                }
                label: {
                    Text("Tornado")
                        .fontWeight(.bold)
                            .font(.title)
                            .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [Color.gray, Color.blue]), startPoint: .leading, endPoint: .trailing))
                            .foregroundColor(.white)
                            .padding(10)
                            .border(LinearGradient(gradient: Gradient(colors: [Color.gray, Color.blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/), width: 5)
                    
                }
                .contentShape(Rectangle())
                if showDetails {
                    Text("This will open to tornado information")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                    
                    
                }
            }
        }
    }



struct CalmTheStorm_Previews: PreviewProvider {
    static var previews: some View {
        CalmTheStorm()
    }
}
