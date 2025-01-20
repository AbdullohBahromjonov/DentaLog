//
//  AppointmentStat.swift
//  DentaLog
//
//  Created by Abdulloh Bahromjonov on 10/01/25.
//

import SwiftUI

enum AppointmentState: Int {
    case new
    case done
    case canceled
    
    var name: String {
        switch self {
        case .new:
            return "NEW"
        case .done:
            return "DONE"
        case .canceled:
            return "CANCELED"
        }
    }
    
    var color: Color {
        switch self {
        case .new:
            return Color.Denta.accent
        case .done:
            return Color.Denta.green
        case .canceled:
            return Color.Denta.red
        }
    }
}
