//
//  CompleteDetailsView.swift
//  Hemopets
//
//  Created by Matheus Polonia on 10/05/21.
//

import SwiftUI

struct CompleteDetailsView: View {
    @State var cat: Cat
    var body: some View {
        ZStack{
            Color(.init("Background"))
                .ignoresSafeArea()
            VStack{
                HStack {
                    PreviousPageButton(title: "Meus Pets")
                        .foregroundColor(.gray)
                    Spacer()
                }
                .offset(y: 60)
                ZStack{
                    Image("Blank4")
                        .resizable()
                        .frame(width: 370, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    VStack{
                        Image("testeHemo")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding(.top, 45)
                        SubtitleView(text: cat.name)
                            .padding()
                        VStack (alignment: .leading, spacing: 10){
                            Text("Informações Básicas")
                                .font(.custom("Mithella-Bold", size: 25))
                                .foregroundColor(.init("ButtonSecondary"))
                            Text("\(cat.age)")
                            Text("genero")
                            Text("\(cat.weight)")
                            
                            
                        }
                        .padding([.leading, .trailing], 40)
                        Spacer()
                    }
                }
            }
        }.navigationBarHidden(true)
    }
}

struct CompleteDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDetailsView(cat: Cat(id: UUID.init(), name: "Gato1", age: 20, weight: 30, vaccinesTaken: ["V3", "V4", "V5", "Antirrábica"], imageName: "testeHemo"))
    }
}
