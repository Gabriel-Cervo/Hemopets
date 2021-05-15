//
//  MainContentView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI

struct MainContentView: View {
    @State var noPetsRegistered: Bool = true
    
    var body: some View {
        Group {
            NavigationView {
                TabView {
                    Group {
                        if noPetsRegistered {
                            NoPetsView()
                                .tabItem {
                                    TabItemView(iconName: "heart.fill", text: "Meus Pets")
                                }
                        } else {
                            RegisteredPetsView()
                                .tabItem {
                                    TabItemView(iconName: "heart.fill", text: "Meus Pets")
                                }
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
                }
                .accentColor(Color.init("ButtonPrimary"))
                .onAppear() {
                    self.updateOnboardValueInDefaults()
                    self.loadRegisteredPets()
                    UITabBar.appearance().barTintColor = UIColor(named: "BackgroundTabBar")
                }
            }
        }
    }
    
    func updateOnboardValueInDefaults() {
        do {
            try UserDefaultsManager.saveData(data: true, for: "sawOnboarding")
        } catch {
            print("Error while saving data: \(error)")
        }
    }
    
    func loadRegisteredPets() {
        self.noPetsRegistered = PetsConstants.registeredCats.count == 0 && PetsConstants.registeredDogs.count == 0
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MainContentView()
                .previewDevice("iPhone 12")
        }
        
        
        MainContentView()
            .previewDevice("iPhone 8")
    }
}
