//
//  LoginView.swift
//  SwiftUITextField
//
//  Created by Srinivas Gadda on 16/12/21.
//

import SwiftUI

struct LoginView: View {
    
    @State private var userNameFld = ""
    @State private var pwdFld = ""
    @State private var isLoginAlertPresent = false
    
    var body: some View {
        VStack {
            TextField("Username", text: $userNameFld)
                .textFieldStyle(.roundedBorder)
                .font(.custom("TimesNewRoman", size: 14.0))
            
            SecureField("Password", text: $pwdFld)
                .textFieldStyle(.roundedBorder)
                .font(.custom("TimesNewRoman", size: 14.0))
            
            Button("Login") {
                if !userNameFld.isEmpty && !pwdFld.isEmpty {
                    isLoginAlertPresent = !isLoginAlertPresent
                }
            }
            .buttonStyle(.bordered)
            .font(.headline)
            .alert(isPresented: $isLoginAlertPresent) {
                Alert(title: Text("Success"), message: Text("Login successful for \(userNameFld)"), dismissButton: .default(Text("OK")))
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
