//
//  CustomTab.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by Student Account on 4/12/21.
//

import SwiftUI

struct CustomTabView: View {
    
    @State private var submitButton = false
    
    var body: some View {
        
        if submitButton {
            Text("You pressed the submit button!")
                .bold()
        }
            
        TabView {
                Button("SUBMIT") {
                    submitButton.toggle()
                }
                .foregroundColor(.blue)
                .background(Color.orange)
                .tabItem {
                    Text("Tab 1")
                }
            Button("ALSO SUBMIT") {
                submitButton.toggle()
            }
            .foregroundColor(.blue)
            .background(Color.orange)
            .tabItem {
                Text("Tab 2")}
        }
            }

struct CustomTab_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
}
