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
    @State private var selectedHemocenter: Hemocenter?
    
    let locationFetcher = LocationFetcher()
    
    private var pins = [
        PinAnnotation(info: Hemocenter(name: "Compania dos Bichos", coordinate: .init(latitude: -30.045382, longitude:  -51.191168))),
        PinAnnotation(info: Hemocenter(name: "Pets & Cia", coordinate: .init(latitude: -30.043571, longitude: -51.193679))),
        PinAnnotation(info: Hemocenter(name: "Teste & Cia", coordinate: .init(latitude: -30.047617, longitude: -51.196549))),
        ]
    
    func requestUserLocation() {
        self.locationFetcher.getUserLocation()
        DispatchQueue.main.async {
            if let location = self.locationFetcher.lastKnownLocation {
                region.center = location
            }
        }
    }
    
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: pins) { pin in
            MapAnnotation(coordinate: pin.info.coordinate) {
                Button(action: {
                    self.selectedHemocenter = pin.info
                }, label: {
                    Image(systemName: "mappin.circle.fill")
                        .foregroundColor(.red)
                })
            }
        }
        .frame(width: 400, height: 300)
        .onAppear(perform: {
            requestUserLocation()
        })
        .edgesIgnoringSafeArea(.all)
        
        .sheet(item: $selectedHemocenter) { hemocenter in
            LocationDetails(name: hemocenter.name)
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
