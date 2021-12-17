//
//  ContentView.swift
//  SwiftUITextSample
//
//  Created by Srinivas Gadda on 16/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            HStack {
                Text("SwiftUI")
                    .font(.custom("Verdana", size: 28.0))
                    .foregroundColor(.red)
                
                Text("Basics")
                    .font(.caption)
                    .foregroundColor(.indigo)
                    .baselineOffset(-10)
            }
            Text ("Its beginning...")
                .font(.caption2)
                .foregroundColor(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
