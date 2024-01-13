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
}
final class DetailViewModel: ObservableObject {
    
    @Published var store: SelectedStore
    @Published var storeData: StoreData?
    @Published var imagesCarousel: [String]
    
    init(store: SelectedStore) {
        self.store = store
        self.imagesCarousel = []
        
        switchStore()
      
    }
    
    func switchStore() {
        switch store {
        case .andromeda:
            loadData(jsonString: StoreData.andromedaJSON)
        case .maqueda:
            loadData(jsonString: StoreData.maquedaJSON)
        case .guetaria:
            loadData(jsonString: StoreData.guetariaJSON)
        }
    }
    
    private func loadData(jsonString: String) {
        if let jsonData = jsonString.data(using: .utf8) {
            let decoder = JSONDecoder()
            do {
                storeData = try decoder.decode(StoreData.self, from: jsonData)
            } catch {
                print("Error al decodificar el JSON: \(error)")
            }
        } else {
            print("Error al convertir el JSON a Data")
        }
    }
}
