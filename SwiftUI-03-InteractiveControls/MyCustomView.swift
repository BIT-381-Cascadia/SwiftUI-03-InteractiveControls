//
//  MyCustomView.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by Mike Panitz on 4/11/21.
//



import SwiftUI

struct MyCustomView: View {
    var subtitle: String ;
    var items = ["Robert Bronson", "Justin Wilcox", "Matin Mirzaei", "Richard Tae"]
    var body: some View {
        
        VStack {
            Text("Calm The Storm")
                .fontWeight(.bold)
                .font(.system(size: 25))
                .padding(7)
            Text(subtitle)
                .font(.system(size: 20))
        
        List {
            
            ForEach(items, id:\.self) { i in
                Text("\(i)")
                    
                }
            }
        }
    }
}

struct MyCustomView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomView(subtitle: "List of our team members")
    }
}
