//
//  VaccinesListView.swift
//  Hemopets
//
//  Created by Matheus Polonia on 11/05/21.
//

import SwiftUI

struct VaccinesListView: View {
    @Binding var vacs: [Vaccine]
    
    var body: some View {
        List(vacs.indices, id: \.self) { index in
            Toggle("\(vacs[index].name)", isOn: $vacs[index].isTaken)
                .foregroundColor(.gray)
        }
    }
}

struct VaccinesListView_Previews: PreviewProvider {
    static var previews: some View {
        VaccinesListView(vacs: Binding.constant(PetsConstants.mandatoryVaccines["Cat"]!))
    }
}
