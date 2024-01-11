//
//  DetailViewModel.swift
//  AndromedaLaundryApp
//
//  Created by Silvia Casanova Martinez on 9/1/24.
//

import Foundation
import MapKit

enum SelectedStore {
    case andromeda
    case maqueda
    case guetaria
    
    var title: String {
        switch self {
        case .andromeda:
            return ""
        case .maqueda:
            return ""
        case .guetaria:
            return ""
        }
    }
    
}
final class DetailViewModel: ObservableObject {
    
    @Published var store: SelectedStore
    @Published var map: MapView
    @Published var imagesCarousel: [String]
    
    init(store: SelectedStore, map: MapView, imagesCarousel: [String]) {
        self.store = store
        self.map = map
        self.imagesCarousel = imagesCarousel
    }
    
    func switchStore() {
        switch store {
        case .andromeda:
            print(store.title)
            break
        case .maqueda:
            break
        case .guetaria:
            break
        }
    }
}
