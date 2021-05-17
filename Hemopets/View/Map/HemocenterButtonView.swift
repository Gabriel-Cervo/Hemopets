//
//  HemocenterButtonView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 17/05/21.
//

import SwiftUI

struct HemocenterButtonView: View {
    var icon: String
    var text: String
    var needsMoreSpace: Bool = false
    var onTap: () -> Void
    
    var body: some View {
        Button(action: onTap,
               label: {
                HStack(spacing: 15) {
                    Image(systemName: icon)
                        .font(.subheadline)
                    
                    Text(text)
                        .font(.caption)
                        .fontWeight(.bold)
                        .textCase(.uppercase)
                    
                    if !needsMoreSpace {
                        Spacer()
                    }
                }
            })
            .frame(height: 15)
            .frame(maxWidth: .infinity)
            .foregroundColor(Color("ButtonPrimary"))
            .padding()
            .background(RoundedRectangle(cornerRadius: 25).stroke(Color("ButtonPrimary"), lineWidth: 2))
    }
}

struct HemocenterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HemocenterButtonView(icon: "phone.fill", text: "ligar", onTap: {})
    }
}
