//
//  MyCustomView.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by Mike Panitz on 4/11/21.
//

import SwiftUI

struct MyCustomView: View {
    
    let subtitle: String
    
    var body: some View {
        // button with closure
        VStack {
            Text(subtitle)
            Button("Click Me", action: {
                print("Nicely done!")
            })
        }
        
        Button(action: {
            print("Hello again!")
        }, label: {
            HStack {
                Text("Edit Button")
            }
        })
    }
}

struct MyCustomView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomView(subtitle: "This was passed in as a parameter")
    }
}
