//
//  ContentView.swift
//  simpleTest
//
//  Created by Lucas Oliveira on 03/09/21.
//

import SwiftUI

extension Image {
    func data(url: URL) -> Self {
        if let data = try? Data(contentsOf: url) {
            return Image(uiImage: UIImage(data: data)!).resizable()
        }
        return self
            .resizable()
    }
    
}

struct ContentView: View {
    
    
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.67, blue: 0.52)
             .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image(systemName: "Luccaroli")
                    .data(url: URL(string: "https://avatars.githubusercontent.com/u/61463908?v=4")!)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Text("Luccaroli")
                    .font(Font.custom("BodoniSvtyTwoSCITCTT-Book", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Mobile Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                Divider()
                InfoView(icon: "phone.fill", text: "91 123 456 78")
                InfoView(icon: "envelope.fill", text: "luccaroli@emai.com")
                    
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
