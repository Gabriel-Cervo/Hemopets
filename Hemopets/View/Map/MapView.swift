//
//  MapView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 03/05/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03))
    
    let locationFetcher = LocationFetcher()
    
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true)
            .frame(width: 400, height: 300)
            .onAppear(perform: {
                requestUserLocation()
            })
    }
    
    func requestUserLocation() {
        self.locationFetcher.start()
        DispatchQueue.main.async {
            if let location = self.locationFetcher.lastKnownLocation {
                region.center = location
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
