//
//  LocationDetails.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 04/05/21.
//

import SwiftUI

struct LocationDetails: View {
    var name: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image("testeHemo")
                .resizable()
                .frame(width: 350, height: 250)
                .aspectRatio(contentMode: .fit)
            
            Text(name)
                .font(.system(.title))
                .padding(.bottom, -2)
            
            HStack {
                Text("Telefone:")
                    .font(.system(.caption))
                    .bold()
                Text("+55 51 555112345")
                    .font(.system(.caption))
            }
            
            HStack {
                Text("Aceita doação de:")
                    .font(.system(.caption))
                    .bold()
                Text("Cachorros e gatos")
                    .font(.system(.caption))
            }
            
            HStack {
                Text("Horários:")
                    .font(.system(.caption))
                    .bold()
                Text("Das 08h as 19h")
                    .font(.system(.caption))
            }
            
            Divider()
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nec quam lectus. Mauris hendrerit vehicula sapien, in finibus dui vulputate ut. Mauris in rhoncus lorem, ut laoreet ex. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur et sollicitudin metus. Nullam pellentesque scelerisque sem, ac malesuada orci dignissim vitae. Aenean vestibulum metus vel felis vulputate, in gravida risus accumsan. Aliquam vehicula ipsum sit amet condimentum tempus. Donec suscipit ipsum massa, non elementum lacus tempor non. Maecenas dui lectus, vehicula vitae venenatis a, suscipit eget diam. Proin id scelerisque diam.")
                .font(.system(.subheadline))
            
        }
        .padding()
    }
}

struct LocationDetails_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetails(name: "Companhia dos bichos")
    }
}
