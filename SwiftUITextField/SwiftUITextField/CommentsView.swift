//
//  CommentsView.swift
//  SwiftUITextField
//
//  Created by Srinivas Gadda on 16/12/21.
//

import SwiftUI

struct CommentsView: View {
    @State private var reviewText = ""
    @State private var isReviewSubmittedAlert = false
    
    var body: some View {
        VStack {
            Text("Comments/Review")
                .underline()
            TextEditor(text: $reviewText)
                .foregroundColor(.gray)
                .border(Color.gray, width: 2.0)
                .cornerRadius(3.0)
                .frame(height: UIScreen.main.bounds.size.height / 3, alignment: .center)
            Button ("Submit") {
                if !reviewText.isEmpty {
                    isReviewSubmittedAlert = !isReviewSubmittedAlert
                }
            }
            .buttonStyle(.bordered)
            .font(.headline)
            .alert(isPresented: $isReviewSubmittedAlert) {
                Alert(title: Text("Submitted"), message: Text("Thanks for sharing your feedback"), dismissButton: .default(Text("OK")))
            }
        }
    }
}

//struct CommentsView_Previews: PreviewProvider {
//    static var previews: some View {
//        CommentsView()
//    }
//}
