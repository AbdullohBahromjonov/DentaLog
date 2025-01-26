//
//  Appointment.swift
//  DentaLog
//
//  Created by Abdulloh Bahromjonov on 10/01/25.
//

import Foundation

struct Appointment: Identifiable {
    let id = UUID()
    let patient: Patient
    let state: AppointmentState
    let treatment: String
    let time: String
    let date: Date
}
