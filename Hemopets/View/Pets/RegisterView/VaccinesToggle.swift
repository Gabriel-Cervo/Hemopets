//
//  VaccinesToggle.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 13/05/21.
//

import SwiftUI
import SwiftUIListSeparator

struct VaccinesToggle: View {
    @State var vacToggle: [vacTest] = [vacTest(id: UUID.init(), name: "V8", isTaken: false), vacTest(id: UUID.init(), name: "V10", isTaken: false), vacTest(id: UUID.init(), name: "V12", isTaken: false), vacTest(id: UUID.init(), name: "Antirrábica", isTaken: false)]
    
    var body: some View {
        VStack{
            ForEach(vacToggle.indices) { index in
                Toggle("\(vacToggle[index].name)", isOn: $vacToggle[index].isTaken)
                    .foregroundColor(Color("TextColorPrimary"))
                    .font(.title3)
            }
        }
        .background(Color(.white))
    }
}
struct VaccinesToggle_Previews: PreviewProvider {
    static var previews: some View {
        VaccinesToggle()
    }
}
