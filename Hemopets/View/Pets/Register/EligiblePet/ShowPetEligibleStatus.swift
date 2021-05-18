//
//  ShowPetEligibleStatus.swift
//  Hemopets
//
//  Created by Rodrigo Okido on 18/05/21.
//

import SwiftUI

struct ShowPetEligibleStatus: View {
    
    @Binding var isEligible: Bool
    
    var body: some View {
        if isEligible {
            EligiblePetScreen()
        } else {
            NotEligiblePetScreen()
        }
    }
}

struct ShowPetEligibleStatus_Previews: PreviewProvider {
    static var previews: some View {
        ShowPetEligibleStatus(isEligible: Binding.constant(true))
    }
}
