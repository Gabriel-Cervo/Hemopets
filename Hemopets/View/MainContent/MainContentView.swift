//
//  MainContentView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI

struct MainContentView: View {
    var body: some View {
        TabView {
            OnboardingView()
                .tabItem {
                    VStack {
                        Image(systemName: "heart.text.square.fill")
                        Text("inicio")
                    }
                }
            
            OnboardingView()
                .tabItem {
                    VStack {
                        Image(systemName: "heart.text.square.fill")
                        Text("Meus Pets")
                    }
                }
            
            MapView()
                .tabItem {
                    VStack {
                        Image(systemName: "heart.text.square.fill")
                        Text("Hemocentros")
                    }
                }
            
            OnboardingView()
                .tabItem {
                    VStack {
                        Image(systemName: "heart.text.square.fill")
                        Text("Dúvidas")
                    }
                }
        }
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
