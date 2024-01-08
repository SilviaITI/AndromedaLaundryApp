//
//  ButtonHomeView.swift
//  AndromedaLaundryApp
//
//  Created by Silvia Casanova Martinez on 8/1/24.
//

import SwiftUI

struct ButtonHomeView: View {
    var text: String
    var imageName: String
    var body: some View {
        VStack{
            Image(imageName)
                .resizable()
                .frame(width: 250, height: 100)
                .cornerRadius(12)
                .shadow(radius: 10)
                .opacity(0.8)
            Text(text)
                .foregroundStyle(.black)
                .bold()
        }
    }
}

#Preview {
    ButtonHomeView(text: "Lavanderia", imageName: "localAndromeda")
}
