//
//  CarouselView.swift
//  AndromedaLaundryApp
//
//  Created by Silvia Casanova Martinez on 13/1/24.
//

import SwiftUI

struct CarouselView: View {
    let images: [String]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 6) {
                ForEach(images, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 250, height:150)
                        .border(Color.black, width: 4)
                        
                }
            }
        }
        .padding(.leading)
    }
}

#Preview {
    CarouselView(images: ["img_andromedaFachada 3", "img_AndromedaLocal", "img_andromedaMáquina de cambio", "img_andromedaMaquinas 1"])
}
