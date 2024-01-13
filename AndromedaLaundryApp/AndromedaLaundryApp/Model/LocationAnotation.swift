//
//  LocationAnotation.swift
//  AndromedaLaundryApp
//
//  Created by Silvia Casanova Martinez on 13/1/24.
//

import Foundation
import MapKit

class LocationAnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String
    var info: String
    
    init(coordinate: CLLocationCoordinate2D, title: String, info: String) {
        self.coordinate = coordinate
        self.title = title
        self.info = info
    }
}
