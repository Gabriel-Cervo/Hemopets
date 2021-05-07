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
                        Image(systemName: "wallet.pass.fill")
                        Text("inicio")
                    }
                }
            
            OnboardingView()
                .tabItem {
                    VStack {
                        Image(systemName: "heart.fill")
                        Text("Meus Pets")
                    }
                }
            
            MapView()
                .tabItem {
                    VStack {
                        Image(systemName: "drop.fill")
                        Text("Hemocentros")
                    }
                }
                .colorScheme(.dark)
            
            OnboardingView()
                .tabItem {
                    VStack {
                        Image(systemName: "questionmark.circle.fill")
                        Text("Dúvidas")
                    }
                }
        }
        .accentColor(Color.init("ButtonPrimary"))
        .onAppear() {
            self.updateOnboardValueInDefaults()
            UITabBar.appearance().barTintColor = .init(named: "Background")
        }
    }
    
    func updateOnboardValueInDefaults() {
        do {
            try UserDefaultsManager.saveData(data: true, for: "sawOnboarding")
        } catch {
            print("Error while saving data: \(error)")
        }
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
