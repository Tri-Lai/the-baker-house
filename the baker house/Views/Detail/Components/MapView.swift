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
        Map(coordinateRegion: $region,
            annotationItems: bakerShops) {
            MapMarker(coordinate: $0.location, tint: .red)
        }
            .onAppear {
                region = MKCoordinateRegion(
                    center: coordinate,
                    span: MKCoordinateSpan(latitudeDelta: 0.002, longitudeDelta: 0.002)
                )
            }
            .edgesIgnoringSafeArea(.all)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 10.776783,
                                                   longitude: 106.696407))
    }
}
