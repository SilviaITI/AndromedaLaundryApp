//
//  DetailView.swift
//  AndromedaLaundryApp
//
//  Created by Silvia Casanova Martinez on 9/1/24.
//

import SwiftUI
import MapKit

struct IdentifiableCoordinate: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

struct DetailView: View {
    @StateObject var viewModel: DetailViewModel
    @State var coordinate: IdentifiableCoordinate
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 40.31278, longitude: -3.85926), // Coordenadas de San Francisco como ejemplo
            span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
        )
    var imagesTest = ["img_AndromedaLocal",
                  "img_andromedaFachada 3",
                  "img_andromedaMaquinas 1",
                  "img_andromedaSecadoras",
                  "img_andromedaSecadoras2",
                  "img_andromedaMáquina de cambio",
                  "img_andromedaRecomendaciones de secado"]
    
    var body: some View {
     
        VStack {
            Text("Lavanderia Anromeda 23")
                .font(.title)
                .bold()
            CarouselView(images: imagesTest)
                
            Map(coordinateRegion: $region,
                            showsUserLocation: true,
                            userTrackingMode: .none,
                            annotationItems:  [coordinate]) { item in
                            MapMarker(coordinate: item.coordinate, tint: .black)
                    
                        }
                            .padding(.horizontal, 20)
                            .frame(height: 200)
                
                
          
           
            
         
        
        }
      
    }
}

#Preview {
    DetailView(viewModel: DetailViewModel(store: SelectedStore.andromeda), coordinate: IdentifiableCoordinate(coordinate: CLLocationCoordinate2D(latitude: 40.31278, longitude: -3.85926)))
}
