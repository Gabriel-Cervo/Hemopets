//
//  MapView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 03/05/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MapConstants.defaultRegion
    @State private var selectedHemocenter: Hemocenter?
    
    let locationFetcher = LocationFetcher()
    
    var body: some View {
        ZStack {
            Color.init("Background")
            
            VStack {
                TitleView(text: "Hemocentros")
                    .padding(.bottom, 20)
                
                Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: MapConstants.pins) { pin in
                    MapAnnotation(coordinate: pin.info.coordinate) {
                        Button(action: {
                            self.selectedHemocenter = pin.info
                        }, label: {
                            ZStack {
                                Color.init("Card")
                                
                                Image("PawRed")
                                    .resizable()
                                    .frame(width: 16, height: 15)
                            }
                            .frame(width: 30.0, height: 30.0)
                            .cornerRadius(25)
                            
                        })
                    }
                }
                .frame(width: 400, height: 650)
                .onAppear() {
                    requestUserLocation()
                    calculateMapSpan()
                }
                .edgesIgnoringSafeArea(.all)
                .cornerRadius(20)
                
                .sheet(item: $selectedHemocenter) {
                    LocationDetails(hemocenter: $0)
                }
            }
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
    
    func requestUserLocation() {
        self.locationFetcher.getUserLocation()
        DispatchQueue.main.async {
            if let location = self.locationFetcher.lastKnownLocation {
                region.center = location
            }
        }
    }
    
    func calculateMapSpan() {
        DispatchQueue.main.async {
            let currentLocation = CLLocation(latitude: region.center.latitude, longitude: region.center.longitude)
            
            var closestDistance: CLLocationDistance?
            
            for pin in MapConstants.pins {
                let latitude = pin.info.coordinate.latitude
                let longitude = pin.info.coordinate.longitude
                
                let location = CLLocation(latitude: latitude, longitude: longitude)
                
                let distanceFromUser = location.distance(from: currentLocation)
                
                if let nearestDistance = closestDistance {
                    if distanceFromUser < nearestDistance {
                        closestDistance = distanceFromUser
                    }
                }
                
                closestDistance = distanceFromUser
            }
            
            var spanValue: Double = 0.03
            
            if let closestDistance = closestDistance {
                let squaredDistance = sqrt(closestDistance.nextDown)
                if squaredDistance > 800 && squaredDistance < 1000 {
                    spanValue = squaredDistance * 0.0003
                } else if squaredDistance <= 150 {
                    spanValue = squaredDistance * 0.003
                } else {
                    spanValue = squaredDistance * 0.04
                }
            }
                        
            region.span = MKCoordinateSpan(latitudeDelta: spanValue, longitudeDelta: spanValue)
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .colorScheme(.dark)
    }
}
