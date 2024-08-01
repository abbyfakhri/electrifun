//
//  ImageView.swift
//  Electrifun
//
//  Created by Abby Fakhri Choiry on 01/08/24.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        ZStack {
            Color(.blue)
            HStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
                Text("Something Else")
            }
            .padding()
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    ImageView()
}
