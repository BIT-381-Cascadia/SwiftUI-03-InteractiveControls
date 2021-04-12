//
//  TextFieldExample.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by Mike Panitz on 4/11/21.
//

import SwiftUI

struct TextFieldExample: View {
    @State var usersInput: String = ""
    
    var body: some View {
        VStack {
        Text("Type your company's name")
            .fontWeight(.bold)
            .font(.system(size: 20))
            .padding(7)
        TextField("Type your company's name here", text:$usersInput)
        Text("Here is your samples:")
            .font(.system(size: 20))
            .fontWeight(.bold)
            
            ZStack {
                Image(systemName: "cloud.fill")
                    .font(.system(size: 100))
                    .foregroundColor(.blue)
                Text("\(usersInput)")
                    .font(.system(size: 25))
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
            }
            
            ZStack {
                Image(systemName: "flame.fill")
                    .font(.system(size: 90))
                    .foregroundColor(.red)
                Image(systemName: "flame")
                    .font(.system(size: 80))
                    .foregroundColor(.red)
                Image(systemName: "flame")
                    .font(.system(size: 70))
                    .foregroundColor(.yellow)
                Text("\n\(usersInput)")
                    .font(.system(size: 30))
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.black)
            }
            
            ZStack {
                Image(systemName: "circle")
                    .font(.system(size: 100))
                    .foregroundColor(.orange)
                Image(systemName: "circle")
                    .font(.system(size: 80))
                    .foregroundColor(.orange)
                Image(systemName: "circle")
                    .font(.system(size: 60))
                    .foregroundColor(.orange)
                Image(systemName: "circle")
                    .font(.system(size: 40))
                    .foregroundColor(.orange)
                Text("\(usersInput)")
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.black)
            }
        }
        .padding()
    }
}


struct TextFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExample()
    }
}
