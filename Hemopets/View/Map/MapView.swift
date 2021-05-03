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
    
    private var pins = [
        PinAnnotation(name: "A", coordinate: .init(latitude: -30.045382, longitude:  -51.191168)),
        PinAnnotation(name: "B", coordinate: .init(latitude: -30.043571, longitude: -51.193679)),
        PinAnnotation(name: "C", coordinate: .init(latitude: -30.047617, longitude: -51.196549))
        ]
    
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: pins) { pin in
            MapAnnotation(coordinate: pin.coordinate) {
                Button(action: {
                        print(pin.name)
                }, label: {
                    Text(pin.name)
                })
            }
        }
            .frame(width: 400, height: 300)
            .onAppear(perform: {
                requestUserLocation()
            })
            .edgesIgnoringSafeArea(.all)
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
