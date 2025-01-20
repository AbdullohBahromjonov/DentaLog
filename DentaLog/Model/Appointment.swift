//
//  Appointment.swift
//  DentaLog
//
//  Created by Abdulloh Bahromjonov on 10/01/25.
//

import Foundation

struct Appointment: Identifiable {
    let id = UUID()
    let state: String
    let treatment: String
    let date: Date
}
