//
//  InfoView.swift
//  PoyrazCard
//
//  Created by Kemal Poyraz on 09.02.21.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.black)
                Text(text)
            })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "La Le Lo!", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
