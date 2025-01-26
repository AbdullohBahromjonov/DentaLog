//
//  HomeViewModel.swift
//  DentaLog
//
//  Created by Abdulloh Bahromjonov on 10/01/25.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var appointmentsByDate: [Appointment] = []
    
    private let appointmentsRepository: AppointmentsRepository
    
    init(
        appointmentsRepository: AppointmentsRepository = AppointmentMockDataSource()
    ) {
        self.appointmentsRepository = appointmentsRepository
    }
    
    @MainActor
    func getAppointmentsBy(date: Date) {
        Task {
            appointmentsByDate = await appointmentsRepository.getAppointments()
        }
    }
}

protocol AppointmentsRepository {
    func getAppointments() async -> [Appointment]
}

struct AppointmentMockDataSource: AppointmentsRepository {
    func getAppointments() async -> [Appointment] {
        let appoinments = [
            Appointment(
                patient: Patient(name: "Abdulloh", surname: "Bahromjonov", phoneNumber: "+998 93 591 09 70", gender: .male),
                state: .done,
                treatment: "Composite Filling – Upper Left Second Molar (Tooth #14)",
                time: "9:30",
                date: Date()
            ),
            Appointment(
                patient: Patient(name: "Abdulloh", surname: "Bahromjonov", phoneNumber: "+998 93 591 09 70", gender: .male),
                state: .canceled,
                treatment: "Composite Filling – Upper Left Second Molar (Tooth #13)",
                time: "10:20",
                date: Date()
            ),
            Appointment(
                patient: Patient(name: "Abdulloh", surname: "Bahromjonov", phoneNumber: "+998 93 591 09 70", gender: .male),
                state: .new,
                treatment: "Composite Filling – Upper Left Second Molar (Tooth #23)",
                time: "11:00",
                date: Date()
            ),
            Appointment(
                patient: Patient(name: "Abdulloh", surname: "Bahromjonov", phoneNumber: "+998 93 591 09 70", gender: .male),
                state: .new,
                treatment: "Dental Crowns – Caps placed over damaged or decayed teeth.",
                time: "12:00",
                date: Date()
            ),
            Appointment(
                patient: Patient(name: "Abdulloh", surname: "Bahromjonov", phoneNumber: "+998 93 591 09 70", gender: .male),
                state: .canceled,
                treatment: "Dental Cleaning – Full",
                time: "14:00",
                date: Date()
            ),
            Appointment(
                patient: Patient(name: "Abdulloh", surname: "Bahromjonov", phoneNumber: "+998 93 591 09 70", gender: .male),
                state: .new,
                treatment: "Composite Filling – Upper Left Second Molar (Tooth #14)",
                time: "14:30",
                date: Date()
            ),
            Appointment(
                patient: Patient(name: "Abdulloh", surname: "Bahromjonov", phoneNumber: "+998 93 591 09 70", gender: .male),
                state: .new, treatment: "Root Canal Therapy – Treating infected tooth pulp to save a damaged tooth.",
                time: "15:40",
                date: Date()
            ),
            Appointment(
                patient: Patient(name: "Abdulloh", surname: "Bahromjonov", phoneNumber: "+998 93 591 09 70", gender: .male),
                state: .new, treatment: "Composite Filling – Upper Left Second Molar (Tooth #14)",
                time: "16:00",
                date: Date()
            ),
            Appointment(
                patient: Patient(name: "Abdulloh", surname: "Bahromjonov", phoneNumber: "+998 93 591 09 70", gender: .male), 
                state: .new, treatment: "Root Canal Therapy – Treating infected tooth pulp to save a damaged tooth.", 
                time: "17:00",
                date: Date()
            )
        ]
        
        return appoinments
    }
}
