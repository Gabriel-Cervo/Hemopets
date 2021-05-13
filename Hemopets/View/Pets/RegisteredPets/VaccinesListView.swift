//
//  VaccinesListView.swift
//  Hemopets
//
//  Created by Matheus Polonia on 11/05/21.
//

import SwiftUI

struct VaccinesListView: View {
    @State var vacsTest: [vacTest] = [vacTest(id: UUID.init(), name: "vac1", isTaken: false), vacTest(id: UUID.init(), name: "vac2", isTaken: true), vacTest(id: UUID.init(), name: "vac3", isTaken: false), vacTest(id: UUID.init(), name: "vac3", isTaken: true)]
    
    var body: some View {
        List(vacsTest.indices, id: \.self) { index in
            Toggle("\(vacsTest[index].name)", isOn: $vacsTest[index].isTaken)
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
