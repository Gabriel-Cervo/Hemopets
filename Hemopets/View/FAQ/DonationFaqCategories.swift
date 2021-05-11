//
//  DonationFaqCategories.swift
//  Hemopets
//
//  Created by Rodrigo Okido on 07/05/21.
//

import SwiftUI

struct DonationFaqCategories: View {
    var body: some View {
            VStack {
                ScrollView(showsIndicators: false) {
                    
                    Spacer(minLength: 50)
                    
                    Text ("Dúvidas")
                        .font(.custom("Mithella-Regular", size: 30))
                        .bold()
                        .foregroundColor(Color("Title"))
                        .padding(.bottom, 50)
                        .padding(.top, 30)
                    
                    VStack {
                        ForEach(categories) { categoriesIndex in
                            NavigationLink (
                                destination: DonationFaqQuestions(categoryChoosed: categoriesIndex.categoryName, questions: categoriesIndex.questions)
                            ) {
                                Image(systemName:"square.fill")
                                    .foregroundColor(Color("Background"))
                                    .padding(.leading, 20)
                                Text("\(categoriesIndex.categoryName)")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("ButtonSecondary"))
                                    .font(.title3)
                                Spacer()
                                Image(systemName:"chevron.right")
                                    .foregroundColor(.black)
                                    .padding(.trailing, 20)

              
                            }
                            .frame(width: 330, height: 50)
                            .background(Color("Card"))
                            .cornerRadius(15)
                           Spacer(minLength: 30)
                        }
                    }
                }
                .padding()
            }
            .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity
            )
            .background(Color("Background"))
            .ignoresSafeArea()
            .navigationBarHidden(true)
        }
}

struct DropdownBase_Previews: PreviewProvider {
    static var previews: some View {
        DonationFaqCategories()
    }
}

