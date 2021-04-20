//
//  InClassActivity_InteractiveControls.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by Student Account on 4/12/21.
//

import SwiftUI

struct InClassActivity_InteractiveControls: View {
    
    @State private var help = false
    
    var body: some View {
        TabView {
            VStack {
            Button("Help") {
                help.toggle()
            }
            .contentShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            if help {
                Text("Help!")
            }
            }
                .tabItem {
                    Text("Tab 1")
                }
            Text("Tab #2")
                .tabItem {
                    Text("Tab 2")
                }
        
    }
        
    }
    
}

struct InClassActivity_InteractiveControlsPreviews: PreviewProvider {
        static var previews: some View {
            InClassActivity_InteractiveControls()
        }
}
