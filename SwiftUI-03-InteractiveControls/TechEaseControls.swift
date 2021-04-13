//
//  TechEaseControls.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by Natalman Nahm on 4/12/21.
//

import SwiftUI

struct TechEaseControls: View {
    
    @State private var supVenus = false
    @State private var supEarth = false
    var body: some View {
        TabView{
            NavigationView{
                VStack{
                    Button(){
                        supEarth.toggle()
                    }
                    label:{
                        Text("Sup on Earth!")
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.yellow)
                            .overlay(RoundedRectangle(cornerRadius: 5.0)
                                        .stroke(Color.yellow, lineWidth: 2.0))
                            .padding(10)
                            .cornerRadius(5)
                            .overlay(RoundedRectangle(cornerRadius: 5.0)
                                        .stroke(Color.yellow, lineWidth: 3.5))
                    }
                    
                    if supEarth {
                        Text("Earth is well and gloomy!")
                        Image(systemName: "cloud.sun")
                    }
                                        
                }.navigationBarTitle("Earth", displayMode:.inline)
                    
            }
            .tabItem {
                Image(systemName: "globe")
                Text("Earth\nControls")
            }
            
            NavigationView{
                VStack{
                    Button(){
                        supVenus.toggle()
                    }
                    label:{
                        Text("Sup on Venus!")
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(5)
                            .overlay(RoundedRectangle(cornerRadius: 5.0)
                                        .stroke(Color.black, lineWidth: 3.5))
                    }
                    
                    if supVenus {
                        Text("A Tornado destroyed Venus!")
                        Image(systemName: "tornado")
                    }

                }.navigationBarTitle("Venus", displayMode:.inline)
            }
            .tabItem {
                Image(systemName: "circle.fill")
                Text("Venus\nControls") }
        }
    }
}

struct TechEaseControls_Previews: PreviewProvider {
    static var previews: some View {
        TechEaseControls()
    }
}
