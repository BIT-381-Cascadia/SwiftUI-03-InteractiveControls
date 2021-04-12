//
//  NavigationViewExample.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by Mike Panitz on 4/11/21.
//

import SwiftUI

struct ComplexView : View{
    var body: some View {
        VStack {
            MyCustomView(subtitle: "From 'ComplexView'")
            Text("Complex View")
                .font(.title)
                .padding()
                .foregroundColor(.green)
            Text("Another text")
            Text("more text")
        }
    }
}

struct NavigationViewExample: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Text("First Navigation Link")
                                .navigationBarTitle("Hello World", displayMode:.large )
                ) {
                    Text("Hello, World!")
                        .padding()
                        .background(Color.red)
                }

                
                NavigationLink(destination: ComplexView()                .navigationBarTitle("ComplexView")) {
                    Text("More complex")
                        .padding()
                        .background(Color.yellow)
                }

            }
        }
    }
}

struct NavigationViewExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewExample()
    }
}
