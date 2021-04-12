//
//  TabViewExample.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by Mike Panitz on 4/11/21.
//

import SwiftUI


struct TabViewExample: View {
    var body: some View {
//        // Kinda funny to try this version:
//        TabView {
//            Text("Option 1")
//            Text("Option 2")
//        }
        TabView {
            Text("View #1")
                .tabItem {
                    Text("Option 1")
                }
            Text("View #2")
                .tabItem {
                    Text("Option 2")
                }
            MyCustomView(subtitle: "Demo")
                .tabItem {
                    Text("CustomView")
                }
        }
        
        // We're going to ignore the
        // programmatic control of a TabView at this point
    }
}

struct TabViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewExample()
    }
}
