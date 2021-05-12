//
//  DonationFaqCategories.swift
//  Hemopets
//
//  Created by Rodrigo Okido on 07/05/21.
//

import SwiftUI

struct DonationFaqCategories: View {
    var paddingTop: CGFloat {
        if Metrics.deviceIsSmall() {
            return -13.0
        } else if Metrics.deviceIsMedium() {
            return 10.0
        } else {
            return 15.0
        }
    }
    
    var body: some View {
            VStack {
                ScrollView(showsIndicators: false) {
                    
                    Spacer(minLength: 50)
                    
                    TitleView(text: "Dúvidas")
                        .padding(.bottom, 50)
                        .padding(.top, paddingTop)
                    
                    VStack {
                        ForEach(categories) { categoriesIndex in
                            NavigationLink (
                                destination: DonationFaqQuestions(categoryChoosed: categoriesIndex.categoryName, questions: categoriesIndex.questions)
                            ) {
                                CategoriesView(iconName: "square.fill", title: categoriesIndex.categoryName)
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

