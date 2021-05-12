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
            NoPetsView()
                .tabItem {
                    TabItemView(iconName: "heart.fill", text: "Meus Pets")
                }
            
            MapView()
                .tabItem {
                    TabItemView(iconName: "drop.fill", text: "Hemocentros")
                }
                .colorScheme(.dark)
            
            DonationView()
                .tabItem {
                    TabItemView(iconName: "questionmark.circle.fill", text: "Dúvidas")
                }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .accentColor(Color.init("ButtonPrimary"))
        .onAppear() {
            self.updateOnboardValueInDefaults()
            UITabBar.appearance().barTintColor = UIColor(named: "BackgroundTabBar")
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
