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
            ScrollView (showsIndicators: false) {
                Spacer(minLength: 50)
                Text ("Dúvidas")
                    .font(.custom("Mithella-Regular", size: 30))
                    .bold()
                    .foregroundColor(Color("Title"))

                VStack (alignment: .leading) {
                    Text("\(categoryChoosed)")
                        .font(.custom("Mithella-Regular", size: 30))
                        .foregroundColor(.red)
                        .bold()
                        .padding()
                    ForEach(questions) { questionIndex in
                        DisclosureGroup("\(questionIndex.question)") {
                            Text(questionIndex.answer)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .padding()
                        }
                        .foregroundColor(.gray)
                        .padding([.trailing, .leading], 20)
                        .background(Color.white)
                        .cornerRadius(20)
                        
                        Spacer(minLength: 30)
                    }
                }
            }
            .padding()
        }
        .background(Color("Background"))
    }
}


struct DonationInformationsView_Previews: PreviewProvider {
    static var previews: some View {
        DonationFaqQuestions(categoryChoosed: "Category Name"  ,questions: [question3, question4, question5, question6])

    }
}
