//
//  NoPetsView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 10/05/21.
//

import SwiftUI

struct NoPetsView: View {
    var paddingTop: CGFloat {
        if Metrics.deviceIsMedium() {
            return 50.0
        } else if Metrics.smallDevices.contains(where: { $0 == UIDevice.current.name }) {
            return 20.0
        } else {
            return 40.0
        }
    }
    
    var titleSize: CGFloat {
        if Metrics.deviceIsSmall() {
            return 30.0
        } else {
            return 40.0
        }
    }
    
    var subTitle: Font {
        if Metrics.deviceIsSmall() {
            return .callout
        } else {
            return .title2
        }
    }
    
    var textSize: Font {
        if Metrics.deviceIsSmall() {
            return .caption
        } else {
            return .body
        }
    }
    
    var body: some View {
        ZStack {
            Color.init("Background")
                .ignoresSafeArea()
            
            VStack {
                TitleView(text: "Meus Pets")
                    .padding(.top, paddingTop)
                
                VStack(alignment: .center) {
                    ZStack {
                        Color.init("Card")

                        VStack {
                            NoPetsIllustration(illustrationName: "Blank5")
                                .padding(.vertical, 30)
                            
                            Text("Ei, tutor!")
                                .font(.custom("Mithella-Bold", size: titleSize))
                                .foregroundColor(.yellow)
                                .padding(.bottom, 5)
                            
                            Divider()
                                .frame(width: 300)
                            
                            VStack(alignment: .center, spacing: 15) {
                                Text("Vi que você ainda não cadastrou nenhum pet!")
                                    .font(subTitle)
                                    .foregroundColor(.black)
                                    .bold()
                                
                                Text("Que tal clicar no botão abaixo e ver se seu animalzinho pode ser um doador?")
                                    .font(textSize)
                                    .foregroundColor(.black)
                                    .frame(width: 230)
                            }
                            .padding(.top, 10)
                            .frame(width: 300)
                            
                            Spacer()
                            
                            FinishButton(text: "Cadastrar meu Pet", nextView: AnyView(MapView()), width: 250)
                                .padding(.bottom, 40)
                            
                        }
                        
                    }
                    .cornerRadius(40)
                }
                .shadow(radius: 2)
                .padding()
                .frame(height: UIScreen.main.bounds.height * Metrics.sizeModifier)
            }
        }
    }
}

struct NoPetsView_Previews: PreviewProvider {
    static var previews: some View {
        NoPetsView()
    }
}
