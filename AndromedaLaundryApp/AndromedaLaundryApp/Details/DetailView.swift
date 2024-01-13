//
//  DetailView.swift
//  AndromedaLaundryApp
//
//  Created by Silvia Casanova Martinez on 9/1/24.
//

import SwiftUI
import MapKit

struct DetailView: View {
    @StateObject var viewModel: DetailViewModel
    var store: StoreModel
    var body: some View {
     
        VStack {
            Text(store.title)
            CarouselView(images: store.imagesCarousel)
            MapView(latitud: store.latitud, longitud: store.longitud)
           
            
         
        
        }
    }
}

//#Preview {
//    DetailView()
//}
