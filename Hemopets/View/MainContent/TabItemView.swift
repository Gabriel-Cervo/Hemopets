//
//  TabItemView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 12/05/21.
//

import SwiftUI

struct TabItemView: View {
    var iconName: String
    var text: String
    
    var body: some View {
        VStack {
            Image(systemName: iconName)
            Text(text)
        }
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(iconName: "heart.fill", text: "Meus Pets")
    }
}
