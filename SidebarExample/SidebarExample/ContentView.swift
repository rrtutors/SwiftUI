//
//  ContentView.swift
//  SidebarExample
//
//  Created by Srinivas Gadda on 22/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Image") {
                    Image("scenary")
                }
                NavigationLink("Text") {
                    Text("Hello, world!")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
