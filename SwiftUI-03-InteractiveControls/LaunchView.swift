//
//  LaunchView.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by Stephen Gomez-Fox on 5/2/21.
//

import SwiftUI

struct LaunchView: View {
    
    var message:String?
    
    var body: some View {
        
        VStack {
            Spacer(minLength: 0)
            Text(message ?? "253YUP")
                .foregroundColor(Color.white)
                .scaledToFill()
        }
        .background(
            Image("yup_splash")
                .resizable()
                .scaledToFill()
                .padding(-64)
        )
        .padding()
    }
    

}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView(message: "Connecting...")
    }
}
