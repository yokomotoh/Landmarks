//
//  MapView.swift
//  Landmarks
//
//  Created by yoko on 26/02/2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion(

            center: CLLocationCoordinate2D(latitude: 45.62748, longitude: 5.49867),

            span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)

        )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {

        region = MKCoordinateRegion(

            center: coordinate,

            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)

        )

    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 45.62748, longitude: 5.49867))
    }
}
