//
//  ContentView.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by Mike Panitz on 4/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                VStack {
                    NavigationLink(destination: MyCustomView(subtitle:"From the example app")
                                    .navigationBarTitle("MyCustomView")
                    ) {
                        Text("MyCustomView")
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.black)
                    }
                
                    NavigationLink(destination: TextFieldExample()
                                    .navigationBarTitle("TextFieldExample")
                    ) {
                        Text("TextFieldExample")
                            .padding()
                            .background(Color.orange)
                            .foregroundColor(.black)
                    }
                    
                    NavigationLink(destination: InteractiveButton()
                                    .navigationBarTitle("InteractiveButton")
                    ) {
                        Text("InteractiveButton")
                            .padding()
                            .background(Color.yellow)
                            .foregroundColor(.black)
                    }
                    NavigationLink(destination: CalmTheStorm()
                                    .navigationBarTitle("Calm the Storm example")
                    ) {
                        Text("Calm the Storm example")
                            .padding()
                            .background(Color.pink)
                            .foregroundColor(.black)
                    }
                    
                }
                .navigationBarTitle("Interactive Control Examples", displayMode:.inline )
            }.tabItem {
                Text("Interactive\nControls") }
            
            NavigationView {
                VStack {
                    NavigationLink(destination: TabViewExample()                  .navigationBarTitle("TabViewExample", displayMode:.large )
                    ) {
                        Text("TabViewExample")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                    }

                    
                    NavigationLink(destination: NavigationViewExample()
                                    .navigationBarTitle("NavigationViewExample", displayMode:.large )
                    ) {
                        Text("NavigationViewExample")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                    }

                }
            }
            .tabItem {
                Text("Navigation\nexamples")
            }
            .navigationBarTitle("Navigation Examples", displayMode:.inline )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
