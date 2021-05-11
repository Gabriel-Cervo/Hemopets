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
                PreviousPageButton(title: "Dúvidas")
                    .foregroundColor(.gray)
                Spacer()
            }
            ScrollView (showsIndicators: false) {
                Text ("Dúvidas")
                    .font(.custom("Mithella-Regular", size: 30))
                    .bold()
                    .foregroundColor(Color("Title"))
                    .padding(.bottom)

//                VStack (alignment: .leading) {
//                    Text("\(categoryChoosed)")
//                        .font(.custom("Mithella-Regular", size: 30))
//                        .foregroundColor(.red)
//                        .bold()
//                        .padding()
//                    ForEach(questions) { questionIndex in
//                        DisclosureGroup("\(questionIndex.question)") {
//                            Text(questionIndex.answer)
//                                .font(.subheadline)
//                                .foregroundColor(Color("ButtonSecondary"))
//                                .padding()
//                        }
//                        .foregroundColor(.gray)
//                        .padding([.trailing, .leading], 20)
//                        .background(Color.white)
//                        .cornerRadius(20)
//
//                        Spacer(minLength: 30)
//                    }
//                }
                
                VStack(alignment: .leading) {
                    Text("\(categoryChoosed)")
                        .font(.custom("Mithella-Regular", size: 30))
                        .foregroundColor(.red)
                        .bold()
                        .padding(.top, 5)
                        .padding(.bottom,30)

                    ForEach(questions.indices) { questionIndex in
                        Text("\(questionIndex+1). "+"\(questions[questionIndex].question)")
                            .foregroundColor(Color("ButtonSecondary"))
                            .bold()
                        Text(questions[questionIndex].answer)
                            .font(.subheadline)
                            .foregroundColor(Color("ButtonSecondary"))
                            .padding(.top)
                            .padding(.bottom,30)
                    }

                }
                .foregroundColor(.gray)
                .padding(30)
                .background(Color.white)
                .cornerRadius(50)
            }
            .padding()
        }
        .background(Color("Background"))
        .navigationBarHidden(true)
    }
}


struct DonationInformationsView_Previews: PreviewProvider {
    static var previews: some View {
        DonationFaqQuestions(categoryChoosed: "Category Name"  ,questions: [question3, question4, question5, question6])

    }
}
