//
//  ContentView.swift
//  ImageViewSample
//
//  Created by Srinivas Gadda on 25/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("Hills")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 250.0, height: 250.0, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.red, lineWidth: 5))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
