//
//  MapView.swift
//  the baker house
//
//  Created by Trí Lai on 03/08/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion();
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                region = MKCoordinateRegion(
                    center: coordinate,
                    span: MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
                )
            }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 10.749997,
                                                   longitude: 106.666664))
    }
}
