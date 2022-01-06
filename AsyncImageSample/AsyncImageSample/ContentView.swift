//
//  ContentView.swift
//  AsyncImageSample
//
//  Created by Srinivas Gadda on 06/01/22.
//

import SwiftUI

let imageLink = "https://images.pexels.com/photos/2893685/pexels-photo-2893685.jpeg"

struct ContentView: View {
    var body: some View {
            
        AsyncImage(url: URL(string: imageLink)) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .failure(_):
                Color.purple
            case .success(let image):
                image.resizable()
                    .frame(width: 300, height: 600, alignment: .center)
                    .cornerRadius(10)
            @unknown default:
                Color.red
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
