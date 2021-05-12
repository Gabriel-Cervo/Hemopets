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
                            Image(systemName: "plus") //create navigation link to register a new pet
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
                                ZStack{ // check if whole view should bre clickable (?)
                                    PartialDetailsView(name: cat.name, imageName: cat.imageName, type: "Gato", isViable: cat.checkWeight())
                                    HStack{
                                        Spacer()
                                        NavigationLink(destination: CompleteDetailsView(cat: cat)) {
                                            Image(systemName: "square.and.pencil")
                                                .resizable()
                                                .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                .padding(.trailing, 30)
                                                .foregroundColor(Color(UIColor.systemGray))
                                        }
                                    }
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
