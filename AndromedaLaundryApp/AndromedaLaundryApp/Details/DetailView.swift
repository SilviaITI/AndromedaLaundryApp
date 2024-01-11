//
//  DetailView.swift
//  AndromedaLaundryApp
//
//  Created by Silvia Casanova Martinez on 9/1/24.
//

import SwiftUI
import MapKit

struct DetailView: View {
    var viewModel = DetailViewModel(store: .andromeda)
    var body: some View {
        VStack {
            MapView(latitud: 40.39042, longitud: -3.76211)
         
        
        }
    }
}

#Preview {
    DetailView()
}
