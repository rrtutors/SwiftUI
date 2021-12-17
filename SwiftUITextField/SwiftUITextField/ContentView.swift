//
//  ContentView.swift
//  SwiftUITextField
//
//  Created by Srinivas Gadda on 16/12/21.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    var body: some View {
        VStack {
            LoginView()
            Spacer()
            CommentsView()
                
        }.padding(20)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
