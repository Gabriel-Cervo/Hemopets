//
//  VaccinesListView.swift
//  Hemopets
//
//  Created by Matheus Polonia on 11/05/21.
//

import SwiftUI

struct VaccinesListView: View {
    @State var vacs: [Vaccine] = PetsConstants.mandatoryVaccines["Cat"]!
    
    @Binding var selectedIndexes: [Int]
    
    var petType: PetType = .cat
    
    var body: some View {
        List(vacs.indices, id: \.self) { index in
            Toggle("\(vacs[index].name)", isOn: $vacs[index].isTaken)
                .foregroundColor(.gray)
                .onTapGesture {
                    if selectedIndexes.contains(index) {
                        let numberIndex = selectedIndexes.lastIndex(of: index)
                        selectedIndexes.remove(at: numberIndex!)
                    } else {
                        selectedIndexes.append(index)
                    }                    
                }
        }
        .onAppear() {
            loadVaccinesData()
        }
    }
    
    func loadVaccinesData() {
        vacs = self.petType == .cat ? PetsConstants.mandatoryVaccines["Cat"]! : PetsConstants.mandatoryVaccines["Dog"]!
    }
}

struct vacTest {
    var id: UUID
    var name: String
    var isTaken: Bool
}

struct VaccinesListView_Previews: PreviewProvider {
    static var previews: some View {
        VaccinesListView(selectedIndexes: Binding.constant([0]))
    }
}