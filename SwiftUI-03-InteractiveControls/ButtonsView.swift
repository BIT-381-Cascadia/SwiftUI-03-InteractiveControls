//
//  ButoonsView.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by ROBERT BRONSON on 4/12/21.
//

import SwiftUI

struct ButtonsView: View {
    @State var disaster = ""
    var body: some View {
        NavigationView{
            VStack{
                Button("Click Me"){
                    disaster = "CLICK1"
                }
                Button("No, Click Me"){
                    disaster = "CLICK2"
                }
            }
        }
        
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
