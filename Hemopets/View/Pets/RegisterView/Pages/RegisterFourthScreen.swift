//
//  RegisterFourthScreen.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 13/05/21.
//

import SwiftUI
import SwiftUIListSeparator

struct RegisterFourthScreen: View {
    var body: some View {
        RegisterContainerContentView {
            VStack {
                HStack {
                    Text("Quais vacinas seu pet já realizou?")
                        .foregroundColor(Color("TextColorPrimary"))
                        .font(.title3)
                        .fontWeight(.medium)
                    Spacer()
                }
                .padding(.top)
                .padding(.leading)
                VaccinesToggle()
                    .padding(.top)
                    .padding(.horizontal)
                    .padding(.bottom, 150)
                HStack{
                    PreviousPageButton()
                    Spacer()
                    NextPageButton(nextView: AnyView(RegisterFourthScreen()))
                }
                .padding(.bottom)
                .padding(.horizontal)
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct RegisterFourthScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterFourthScreen()
    }
}
