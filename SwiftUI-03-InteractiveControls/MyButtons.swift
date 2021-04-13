//
//  MyButtons.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by ROBERT BRONSON on 4/12/21.
//

import SwiftUI

struct MyButtons: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(
                    destination: TestView(disaster: "Tornado"),
                    label: {
                        Text("Tornado")
                    })
                NavigationLink(
                    destination: TestView(disaster: "Earthquake"),
                    label: {
                        Text("Earthquake")
                    })
            }
        }
    }
}

struct MyButtons_Previews: PreviewProvider {
    static var previews: some View {
        MyButtons()
    }
}
