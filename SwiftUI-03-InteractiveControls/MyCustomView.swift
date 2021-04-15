//
//  MyCustomView.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by Mike Panitz on 4/11/21.
//

import SwiftUI

struct MyCustomView: View {
    @State private var Details = false
    var subtitle: String
    
    var body: some View {
        VStack {
            Text("Hello Ultimate Player")
            Divider()
            Text(subtitle)
            Button() {Details.toggle()
            }
            
            label: {
                Text("RSVP")
                    .background(Color.green)
                    .padding(20)
                    .background(Color.white)
                    .padding(10)
                    .background(Color.blue)
            }
            .contentShape(Rectangle())
            if Details {
                Text("RSVP Successful!")
            }
        }
    }
}

struct MyCustomView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomView(subtitle: "This League A event is located here, at 1:00pm.  Would you like to RSVP?")
    }
}
