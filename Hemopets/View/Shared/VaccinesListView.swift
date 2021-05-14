//
//  VaccinesListView.swift
//  Hemopets
//
//  Created by Matheus Polonia on 11/05/21.
//

import SwiftUI

struct VaccinesListView: View {
    let type: PetType = .cat
    
    @State var vacs = {
        return type == .cat ? PetsContants.mandatoryVaccines["Cat"] : PetsContants.mandatoryVaccines["Dog"]
    }
    
    var body: some View {
        List(vacs.indices, id: \.self) { index in
            Toggle("\(vacs[index].name)", isOn: $vacs[index].isTaken)
                .foregroundColor(.gray)
        }
    }
}

struct vacTest {
    var id: UUID
    var name: String
    var isTaken: Bool
}

struct VaccinesListView_Previews: PreviewProvider {
    static var previews: some View {
        VaccinesListView()
    }
}
