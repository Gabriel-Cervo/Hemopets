//
//  CategoriesView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 12/05/21.
//

import SwiftUI

struct CategoriesView: View {
    var iconName: String
    var title: String
    
    var body: some View {
        Group {
            Image(systemName: iconName)
                .foregroundColor(Color("Background"))
                .padding(.leading, 20)
            
            Text(title)
                .fontWeight(.bold)
                .foregroundColor(Color("ButtonSecondary"))
                .font(.title3)
            
            Spacer()
            
            Image(systemName:"chevron.right")
                .foregroundColor(.black)
                .padding(.trailing, 20)
        }
        
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView(iconName: "square.fill", title: "Teste")
    }
}
