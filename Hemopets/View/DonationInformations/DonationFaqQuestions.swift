//
//  DonationInformationsView.swift
//  Hemopets
//
//  Created by Rodrigo Okido on 03/05/21.
//

import SwiftUI

struct DonationFaqQuestions: View {
    
    let categoryChoosed: String
    let questions: [Question]
    
    var body: some View {
        VStack {
            ScrollView (showsIndicators: false) {
                Text ("Dúvidas")
                    .font(.title)
                    .bold()
                
                VStack (alignment: .leading) {
                    Text("\(categoryChoosed)")
                        .font(.title2)
                        .bold()
                        .padding()
                    ForEach(questions) { questionIndex in
                        DisclosureGroup("\(questionIndex.question)") {
                            Text(questionIndex.answer)
                                .font(.subheadline)
                                .padding()
                        }
                        .foregroundColor(.white)
                        .padding([.trailing, .leading], 20)
                        .background(Color.pink)
                        .cornerRadius(20)
                    }
                }
            }
            .padding()
        }
        .background(Color.gray)
    }
}


struct DonationInformationsView_Previews: PreviewProvider {
    static var previews: some View {
        DonationFaqQuestions(categoryChoosed: "Category Name"  ,questions: [question3, question4, question5, question6])

    }
}
