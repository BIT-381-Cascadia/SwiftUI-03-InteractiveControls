//
//  MyTabView.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by ROBERT BRONSON on 4/12/21.
//

import SwiftUI

struct MyTabView: View {
    
    var body: some View {
        TabView {
            ButtonsView()
                .tabItem {Text("CLick 1")
                }
            InteractiveButton()
                .tabItem { Text("CLick 2")
                }
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
