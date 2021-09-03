//
//  InfoView.swift
//  simpleTest
//
//  Created by Lucas Oliveira on 03/09/21.
//

import SwiftUI

struct InfoView: View {
    let icon: String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: icon)
                    .foregroundColor(.green)
                Text(text).foregroundColor(.black)
            })
            .padding(.horizontal, 20)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(icon: "phone.fill", text: "12332154-45")
            .previewLayout(.sizeThatFits)
    }
}
