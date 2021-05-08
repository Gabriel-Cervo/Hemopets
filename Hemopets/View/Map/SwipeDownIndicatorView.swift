//
//  SwipeDownIndicatorView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 06/05/21.
//

import SwiftUI

struct SwipeDownIndicatorView: View {
    var body: some View {
        HStack {
            Spacer()
            RoundedRectangle(cornerRadius: 0)
                .frame(width: 90, height: 1)
                .foregroundColor(.gray)
            Spacer()
        }
        .padding(.bottom, 30)
    }
}

struct SwipeDownIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeDownIndicatorView()
    }
}
