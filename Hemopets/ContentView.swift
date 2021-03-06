//
//  ContentView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 03/05/21.
//

import SwiftUI

struct ContentView: View {
    @State private var hasNotLoadedDefaults: Bool = true
    @State private var hasSeenOnboarding: Bool = false
    
    var body: some View {
        if hasNotLoadedDefaults {
            SplashView()
                .onAppear() {
                    loadUserDefaults()
                }
        } else {
            if hasSeenOnboarding {
                NavigationView {
                    MainContentView()
                        .colorScheme(.light)
                }
            } else {
                OnboardingView()
            }
        }
    }
    
    func loadUserDefaults() {
        loadRegisteredDogs()
        loadRegisteredCats()
        loadOnboardingValue()
    }
    
    func loadRegisteredDogs() {
        do {
            let registeredDogs = try UserDefaultsManager.loadData(for: "registeredDogs") as [Dog]
            
            DispatchQueue.main.async {
                PetsConstants.registeredDogs = registeredDogs
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func loadRegisteredCats() {
        do {
            let registeredCats = try UserDefaultsManager.loadData(for: "registeredCats") as [Cat]
            
            DispatchQueue.main.async {
                PetsConstants.registeredCats = registeredCats
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func loadOnboardingValue() {
        do {
            let sawOnboarding = try UserDefaultsManager.loadData(for: "sawOnboarding") as Bool
            
            DispatchQueue.main.async {
                self.hasSeenOnboarding = sawOnboarding
                self.hasNotLoadedDefaults = false
            }
        } catch {
            print(error.localizedDescription)
            self.hasNotLoadedDefaults = false
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
        
        ContentView()
            .previewDevice("iPhone 8")
    }
}
