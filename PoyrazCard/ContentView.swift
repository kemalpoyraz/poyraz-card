//
//  ContentView.swift
//  PoyrazCard
//
//  Created by Kemal Poyraz on 09.02.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.17, green: 0.24, blue: 0.31).ignoresSafeArea(.all)
            VStack {
                Image("poyraz")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5))
                Text("Kemal Poyraz")
                    .font(Font.custom("Satisfy-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Computer Scientist and Software Engineer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Divider()
                InfoView(text: "+90 535 578 02 04", imageName: "phone.fill")
                InfoView(text: "kemalpoyrazz@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.device)
            .previewDevice("iPhone Xs Max")
    }
}

