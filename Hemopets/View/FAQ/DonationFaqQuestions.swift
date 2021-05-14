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
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                PreviousPageButton(title: "Voltar")
                    .foregroundColor(.gray)
                    .padding(.top, Metrics.cardPaddingTop - 30)
                    .padding(.bottom, -Metrics.cardPaddingTop)
                
                ScrollView (showsIndicators: false) {
                    TitleView(text: "Dúvidas")
                        .padding(.bottom)
                        .padding()
                    
                    VStack (alignment: .leading) {
                        SubtitleView(text: categoryChoosed, size: 30)
                            .padding()
                        
                        ForEach(questions) { questionIndex in
                            DisclosureGroup("\(questionIndex.question)") {
                                DisclosureDetailsView(text: questionIndex.answer)
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
            .navigationBarHidden(true)
        }
    }
}


struct DonationInformationsView_Previews: PreviewProvider {
    static var previews: some View {
        DonationFaqQuestions(categoryChoosed: "Category Name"  ,questions: [question3, question4, question5, question6])
        
    }
}
