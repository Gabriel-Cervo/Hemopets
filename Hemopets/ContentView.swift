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
    
    @State private var timeRemainingToExitSplash = 2
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        if hasNotLoadedDefaults && timeRemainingToExitSplash > 0 {
            SplashView()
                .onReceive(timer) { _ in
                    if timeRemainingToExitSplash > 0 {
                        timeRemainingToExitSplash -= 1
                    } else {
                        checkOnboardDefaults()
                    }
                }
        } else {
            if hasSeenOnboarding {
                MainContentView()
            } else {
                OnboardingView()
            }
        }
    }
    
    func checkOnboardDefaults() {
        do {
            let storedValue = try UserDefaultsManager.loadData(for: "sawOnboarding") as Bool
            
            DispatchQueue.main.async {
                self.hasSeenOnboarding = storedValue
                self.hasNotLoadedDefaults = false
            }
        } catch {
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
