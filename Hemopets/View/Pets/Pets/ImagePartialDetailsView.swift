//
//  ImagePartialDetailsView.swift
//  Hemopets
//
//  Created by Matheus Polonia on 10/05/21.
//

import SwiftUI

struct ImagePartialDetailsView: View {
    var imageName: String
    var isViable: Bool
    
    var body: some View {
        ZStack {
            if imageName.hasSuffix("Placeholder") {
                Image(imageName)
                    .resizable()
                    .clipShape(Circle())
                    .shadow(radius: 2)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                    .frame(width: 70, height: 70, alignment: .center)
            } else {
                let imageURL = UserDefaultsManager.getDocumentsDirectory().appendingPathComponent(imageName)
                let imageData = try? Data(contentsOf: imageURL)
                
                Image(uiImage: UIImage(data: imageData!)!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .shadow(radius: 2)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                    .frame(width: 105, height: 105, alignment: .center)
            }
            
            Image(systemName: isViable ? "checkmark.seal.fill" : "xmark.seal.fill")
                .font(.largeTitle)
                .foregroundColor(isViable ? .green : .yellow)
                .padding(.top, 50)
                .padding(.leading, 80)
        }
        
        .frame(width: 115, height: 115)
    }
}

struct ImagePartialDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePartialDetailsView(imageName: "NewImage", isViable: false)
    }
}
