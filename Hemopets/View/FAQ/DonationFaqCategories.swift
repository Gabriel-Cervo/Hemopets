//
//  DonationFaqCategories.swift
//  Hemopets
//
//  Created by Rodrigo Okido on 07/05/21.
//

import SwiftUI

struct DonationFaqCategories: View {
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            VStack {
                ScrollView(showsIndicators: false) {
                    TitleView(text: "Dúvidas")
                        .padding(.bottom, 50)
                        .padding(.top, 40)
                    
                    VStack {
                        ForEach(categories) { categoriesIndex in
                            NavigationLink (
                                destination: DonationFaqQuestions(categoryChoosed: categoriesIndex.categoryName, questions: categoriesIndex.questions)
                            ) {
                                CategoriesView(iconName: categoriesIndex.categoryIconName, title: categoriesIndex.categoryName)
                            }
                            .frame(width: 330, height: 50)
                            .background(Color("Card"))
                            .cornerRadius(15)
                            Spacer(minLength: 30)
                        }
                    }
                }
            }
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity
            )
            .navigationBarHidden(true)
        }
    }
}

struct DropdownBase_Previews: PreviewProvider {
    static var previews: some View {
        DonationFaqCategories()
    }
}

