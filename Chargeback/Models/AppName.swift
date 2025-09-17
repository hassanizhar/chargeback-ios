//
//  AppName.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//


import Foundation

enum AppName: String, CaseIterable, Identifiable {
    case netflix = "Netflix"
    case amazonPrime = "Amazon Prime"
    case osnPlus = "OSN+"
    case youtube = "YouTube"
    case ooredoo = "Ooredoo"
    
    var id: String { rawValue }
}

extension AppName {
    var imageName: String {
        switch self {
        case .netflix: return "netflix"
        case .amazonPrime: return "prime"
        case .osnPlus: return "osn"
        case .youtube: return "youtube"
        case .ooredoo: return "ooredoo"
        }
    }
}
