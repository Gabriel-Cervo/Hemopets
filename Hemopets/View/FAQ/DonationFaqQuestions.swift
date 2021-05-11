//
//  DonationFaqQuestions.swift
//  Hemopets
//
//  Created by Rodrigo Okido on 07/05/21.
//

import SwiftUI

struct DonationFaqQuestions: View {
    
    let categoryChoosed: String
    let questions: [Question]
    
    var body: some View {
        VStack {
            HStack {
                PreviousPageButton(title: "Voltar")
                    .foregroundColor(.gray)
                    .padding(.top, 40)
                    .padding(.bottom, -40)
                Spacer()
            }
            
            ScrollView (showsIndicators: false) {
                Text ("Dúvidas")
                    .font(.custom("Mithella-Regular", size: 30))
                    .bold()
                    .foregroundColor(Color("Title"))
                    .padding(.bottom)
                    .padding()

                VStack (alignment: .leading) {
                    Text("\(categoryChoosed)")
                        .font(.custom("Mithella-Regular", size: 30))
                        .foregroundColor(.red)
                        .bold()
                        .padding()
                    ForEach(questions) { questionIndex in
                        DisclosureGroup("\(questionIndex.question)") {
                            Divider()
                                .padding()
                                .padding(.bottom, -25)
                            Text(questionIndex.answer)
                                .font(.callout)
                                .foregroundColor(Color("ButtonSecondary"))
                                .padding()
                                .lineLimit(500)

                        }
                        .accentColor(Color("ButtonPrimary"))
                        .foregroundColor(.black)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(Color.white)
                        .cornerRadius(20)
                        .lineLimit(5)

                        Spacer(minLength: 30)
                    }
                }
            }
            .padding()
        }
        .background(Color("Background"))
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}


struct DonationInformationsView_Previews: PreviewProvider {
    static var previews: some View {
        DonationFaqQuestions(categoryChoosed: "Category Name"  ,questions: [question3, question4, question5, question6])

    }
}
