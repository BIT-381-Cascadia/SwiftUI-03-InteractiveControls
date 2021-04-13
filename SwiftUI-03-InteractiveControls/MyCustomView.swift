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
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(subtitle)
        }
    }
}

struct MyCustomView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomView(subtitle: "This was passed in as a parameter")
    }
}
