//
//  HomeView.swift
//  AndromedaLaundryApp
//
//  Created by Silvia Casanova Martinez on 8/1/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("¿Qué lavanderia quieres conocer?")
                .font(.title2)
                .bold()

            Button(action: {}, label: {
            ButtonHomeView(text: "Calle Andrómeda 23 (Móstoles)", imageName: "localAndromeda")
            })
            
            Button(action: {}, label: {
                ButtonHomeView(text: "Calle Maqueda 120 (Aluche)", imageName: "localMaqueda")
            })
            Button(action: {}, label: {
          ButtonHomeView(text: "Calle Guetaria 72 (Orcasitas)", imageName: "localGuetaria")})
            
        }
    }
}
#Preview {
    HomeView()
}
