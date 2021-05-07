//
//  DropdownBase.swift
//  Hemopets
//
//  Created by Rodrigo Okido on 05/05/21.
//

import SwiftUI

struct DonationFaqCategories: View {
    var body: some View {
        
        VStack {
            ScrollView(showsIndicators: false) {
                Text ("Dúvidas")
                    .font(.title)
                    .bold()
                    .padding(.bottom, 50)
                VStack {
                    ForEach(categories) { categoriesIndex in
                        NavigationLink (
                            destination: DonationFaqQuestions(categoryChoosed: categoriesIndex.categoryName, questions: categoriesIndex.questions)
                        ) {
                            Text("\(categoriesIndex.categoryName)")
                        }
                        .frame(width: 300, height: 60)
                        .padding(5)
                        .foregroundColor(.white)
                        .background(Color.pink)
                        .cornerRadius(20)
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
        .background(Color.gray)
    }
}

struct DropdownBase_Previews: PreviewProvider {
    static var previews: some View {
        DonationFaqCategories()
    }
}
