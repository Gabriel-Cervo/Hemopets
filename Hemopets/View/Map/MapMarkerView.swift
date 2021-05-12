//
//  MapMarkerView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 12/05/21.
//

import SwiftUI

struct MapMarkerView: View {
    var body: some View {
        ZStack {
            Color.init("Card")
            
            Image("PawRed")
                .resizable()
                .frame(width: 16, height: 15)
        }
        .frame(width: 30.0, height: 30.0)
        .cornerRadius(25)    }
}

struct MapMarkerView_Previews: PreviewProvider {
    static var previews: some View {
        MapMarkerView()
    }
}
