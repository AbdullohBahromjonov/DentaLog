//
//  Patient.swift
//  DentaLog
//
//  Created by Abdulloh Bahromjonov on 10/01/25.
//

import Foundation

struct Patient: Identifiable {
    let id = UUID()
    let name: String
    let surname: String
    let phoneNumber: String
    let gender: Geneder
}
