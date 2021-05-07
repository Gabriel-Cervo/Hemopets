//
//  ProgressCircle.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI

struct ProgressCircle: View {
    var isActive: Bool
    
    var body: some View {
        Circle()
            .frame(width: 13, height: 13)
            .foregroundColor(isActive ? .red : .gray)
    }
}

struct ProgressCircle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressCircle(isActive: true)
    }
}
