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
    
    func requestUserLocation() {
        self.locationFetcher.getUserLocation()
        DispatchQueue.main.async {
            if let location = self.locationFetcher.lastKnownLocation {
                region.center = location
            }
        }
    }
    
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
                                    .frame(width: 15, height: 15)
                            }
                            .frame(width: 30.0, height: 30.0)
                            .cornerRadius(25)
                            
                        })
                    }
                }
                .frame(width: 400, height: 650)
                .onAppear(perform: {
                    requestUserLocation()
                })
                .edgesIgnoringSafeArea(.all)
                
                .sheet(item: $selectedHemocenter) { hemocenter in
                    LocationDetails(name: hemocenter.name)
                }
            }
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .colorScheme(.dark)
    }
}
