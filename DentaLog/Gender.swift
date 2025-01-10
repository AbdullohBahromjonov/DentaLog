//
//  Gender.swift
//  DentaLog
//
//  Created by Abdulloh Bahromjonov on 10/01/25.
//

import Foundation

enum Geneder: Int {
    case male
    case female
    
    var name: String {
        switch self {
        case .male:
            return "Male"
        case .female:
            return "Female"
        }
    }
}
