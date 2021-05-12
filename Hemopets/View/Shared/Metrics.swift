//
//  Metrics.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 12/05/21.
//

import Foundation
import SwiftUI

/**
 Valores que mudam de acordo com acessibilidade (tamanhos)
 */
struct Metrics {
    @ScaledMetric public static var fontSize: CGFloat = 1
    
    public static let sizeModifier: CGFloat = 0.77
    public static let mediumDevices = ["iPhone 8 Plus", "iPhone 7 Plus"]
    public static let smallDevices = ["iPhone 8", "iPhone 7", "iPhone 6s"]
    
    public static func deviceIsSmallOrMedium() -> Bool {
        if Metrics.mediumDevices.contains(where: { $0 == UIDevice.current.name }) || Metrics.smallDevices.contains(where: { $0 == UIDevice.current.name }) {
            return true
        }
        return false
    }
    
    public static func deviceIsSmall() -> Bool {
        if Metrics.smallDevices.contains(where: { $0 == UIDevice.current.name }) {
            return true
        }
        return false
    }
    
    public static func deviceIsMedium() -> Bool {
        if Metrics.mediumDevices.contains(where: { $0 == UIDevice.current.name }) {
            return true
        }
        return false
    }
}
