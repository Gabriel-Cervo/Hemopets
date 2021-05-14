//
//  RegisterFourthScreen.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 13/05/21.
//

import SwiftUI

struct RegisterFourthScreen: View {
    @State var selectedIndexes: [Int] = [Int]()
    
    var body: some View {
        RegisterContainerContentView {
            Group {
                VStack {
                    HStack {
                        Text("Quais vacinas seu pet já realizou?")
                            .foregroundColor(Color("TextColorPrimary"))
                            .font(.title3)
                            .fontWeight(.medium)
                        Spacer()
                    }
                    .padding(.top, Metrics.registerFieldPaddingTop)
                    .padding(.leading)
                    
                    VaccinesListView(selectedIndexes: $selectedIndexes, petType: .cat)
                        .padding(.top)
                        .padding(.horizontal)
                        .padding(.bottom, 150)
                    
                    HStack {
                        PreviousPageButton()
                        Spacer()
                       
                        NextPageButton(nextView: AnyView(RegisterFourthScreen()), onClick: saveValues)
                    }
                    .padding(.bottom)
                    .padding(.horizontal)
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
            .padding(.horizontal, 15)
        }
    }
    
    func saveValues() {
        print(selectedIndexes)
    }
}

struct RegisterFourthScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterFourthScreen()
    }
}
