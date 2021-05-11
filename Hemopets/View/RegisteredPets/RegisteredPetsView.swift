//
//  RegisteredPetsView.swift
//  Hemopets
//
//  Created by Matheus Polonia on 10/05/21.
//

import SwiftUI

struct RegisteredPetsView: View {
    var catList: [Cat] = [Cat(id: UUID.init(), name: "Gato1", age: 20, weight: 30, vaccinesTaken: ["V3", "V4", "V5", "Antirrábica"], imageName: "testeHemo"), Cat(id: UUID.init(), name: "Gato2", age: 20, weight: 2, vaccinesTaken: ["V3", "V4", "V5", "Antirrábica"], imageName: "testeHemo")]
    var body: some View {
        NavigationView {
            ZStack{
                Color(.init("Background"))
                    .ignoresSafeArea()
                VStack{
                    ZStack{
                        HStack{
                            Text("Meus Pets")
                                .font(.custom("Mithella-Bold", size: 42))
                                .foregroundColor(.init("Title"))
                        }
                        HStack{
                            Spacer()
                            Image(systemName: "plus")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .padding(.trailing, 30)
                        }
                    }
                    .padding(.top, 30)
                    .padding(.bottom, 10)
                    ScrollView {
                        VStack(spacing: 20) {
                            ForEach(catList, id: \.id) { cat in
                                NavigationLink(destination: CompleteDetailsView(cat: cat)) {
                                    PartialDetailsView(name: cat.name, imageName: cat.imageName, type: "Gato", isViable: cat.checkWeight())
                                }
                                
                            }.padding(.bottom)
                        }.padding(.top, 30)
                    }
                    Spacer()
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct RegisteredPetsView_Previews: PreviewProvider {
    static var previews: some View {
        RegisteredPetsView()
    }
}
