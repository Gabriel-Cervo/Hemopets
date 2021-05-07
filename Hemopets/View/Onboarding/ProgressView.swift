//
//  ProgressView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI

struct ProgressView: View {
    var activeCircle: Int
    
    var body: some View {
        HStack(spacing: 20) {
            ProgressCircle(isActive: activeCircle == 1)
            ProgressCircle(isActive: activeCircle == 2)
            ProgressCircle(isActive: activeCircle == 3)
            ProgressCircle(isActive: activeCircle == 4)
        }
        .frame(width: 300)
        .padding(.top, 25)
        
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(activeCircle: 1)
    }
}
